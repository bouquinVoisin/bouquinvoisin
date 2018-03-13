class ReviewsController < ApplicationController
  before_action :authenticate_user!
  
  attr_accessor :google_books

  def new
  	@review = Review.new
  end
  
  def create
  	@review = Review.new(review_params)
  	@google_books = GoogleBooks.search(@review.book_title).first
  	#debugger
  	@review.user_id = current_user.id
  	@review.book_cover = @google_books.image_link(:zoom => 5)

  	if @review.save
  		flash[:success] = "Vous avez créé un nouveau commentaire"
  		redirect_to @review
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
