class ReviewsController < ApplicationController
  before_action :authenticate_user!
  
  attr_accessor :google_books, :results, :research

  def new
  	@review = Review.new
  end

  def index
    @user = current_user
    @phrase = ""
    case 
      when user_signed_in? && @user.nearbys.nil? || user_signed_in? && !@user.nearbys.exists?

        @phrase = "1 Nous n'avons trouvé aucune recommandation autour de chez toi. Tu peux jeter un oeil aux recommandations des membres ailleurs en France. N'hésite pas à inviter tes voisins :)"
        @reviews = Review.all   
      
      when user_signed_in? && @user.nearbys.exists?

            @phrase = ""
            @reviews = []
             @user.nearbys.each do |user|
               user.reviews.each do |review_near|
                @reviews << review_near
              end
             end
            @reviews 

          if @reviews == []
             @phrase = "2 Nous n'avons trouvé aucune recommandation autour de chez toi. Tu peux jeter un oeil aux recommandations des membres ailleurs en France. N'hésite pas à inviter tes voisins :)"
             @reviews = Review.all   
          end
   
    end


  end

def cp
 @users = User.postal_code(params[:postal_code])
 @reviews = []
   @users.each do |user|
    user.reviews.each do |review_cp|
      @reviews << review_cp
    end
   end
 @reviews 
 if @reviews == []
  flash[:success] = "Aucun voisin avec le même code postal :/"
  redirect_to reviews_path
 else
 render 'reviews/index'
end
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
      redirect_to @review
  	else render 'edit'
    end
  end

  def destroy 
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:success] = "Vous avez effacé votre commentaire"
    end
    redirect_to root_path
  end



  private 

  def review_params
  	params.require(:review).permit(:body, :book_title, :book_author, :book_category, :book_cover)
  end

end
