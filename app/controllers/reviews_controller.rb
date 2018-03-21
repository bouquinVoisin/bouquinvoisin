class ReviewsController < ApplicationController
  before_action :authenticate_user!
  
  attr_accessor :google_books, :results, :research


  def new
  	@review = Review.new
  end

  def index
    @review_option = false
    @user = current_user
    @phrase = ""
    case 
      when user_signed_in? && @user.nearbys.nil? || user_signed_in? && !@user.nearbys.exists?

        @phrase = "Nous n'avons trouvé aucune recommandation autour de chez toi. Tu peux jeter un oeil aux recommandations des membres ailleurs en France. N'hésite pas à inviter tes voisins :)"
        @reviews = Review.all   
      
      when user_signed_in? && @user.nearbys.exists?

            @phrase = ""
            @reviews = []
            @reviews = reviews_nearby
        

          if @reviews == []
             @phrase = "Nous n'avons trouvé aucune recommandation autour de chez toi. Tu peux jeter un oeil aux recommandations des membres ailleurs en France. N'hésite pas à inviter tes voisins :)"
             @reviews = Review.all   
          end
   
    end
 

  end


def reviews_nearby
  @reviews = []  
 current_user.nearbys.each do |user|
               user.reviews.each do |review_near|
                @reviews << review_near
              end
             end
  @reviews 
end

def select_users(zone)
   if zone == 'par code postal'
    @users = User.postal_code(current_user.postal_code)
 elsif zone == 'France entière'
    @users = User.all
 else
   @users = current_user.nearbys
 end
 @users


end


def choose_category
  @user = current_user
  @reviews = []



    # If a user has selected a category, but no type, only 
    # show reviews from that category.
    if params[:book_category] && !params[:zone]
      @reviews = Review.book_category(params[:book_category])
    end

    # If a user has selected a category and a type, only show
    # reviews from that category with that type
    if params[:book_category] && params[:zone]
      @users = select_users(params[:zone])

        @users.each do |user|
          user.reviews.each do |review_cat|
                 if review_cat.book_category == params[:book_category]
                  @reviews << review_cat
   
                 end 

           end
       end
      @reviews
    end

    # If a user has selected a type but not a category, show all 
    # of the reviews with that type 
    if params[:book_category] && !params[:zone]
      @users = select_users(:zone)
      @reviews = @users.reviews
    end

       render 'reviews/index'
end



    
  
  def create
  	@review = Review.new(review_params)
  	@google_books = GoogleBooks.search(@review.book_title).first
  	@review.user_id = current_user.id
    options = {}
    options[:searchType] = "image"
  	#@review.book_cover = @google_books.image_link(:zoom => 5)
    @research = @review.book_title + "livre couverture"
    @results = GoogleCustomSearchApi.search(research, options)
    @review.book_cover = @results.items.first.link

  	if @review.save
  		flash[:success] = "Vous avez créé un nouveau commentaire"
  		redirect_to profile_path
  	else
  		render 'new'
  	end

  end

  def show
  	@review = Review.find(params[:id])
  end

  def edit
  	@review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:success] = "Vous avez bien édité votre commentaire"
      redirect_to profile_path
  	else render 'edit'
    end
  end

  def destroy 
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:success] = "Vous avez effacé votre commentaire"
    end
    redirect_to profile_path
  end



  private 

  def review_params
  	params.require(:review).permit(:body, :book_title, :book_author, :book_category, :book_cover)
  end

end
