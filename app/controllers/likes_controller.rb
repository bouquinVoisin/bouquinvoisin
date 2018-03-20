 class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review
  respond_to :html, :js

  def create

  	review = Review.find(params[:review_id])
  	@review.likes.where(user_id: current_user.id).first_or_create
    flash[:success] = "Vous avez ajouté ce bouquin à vos favoris !"
  	respond_to do |format|
  		format.js { render nothing: true }
  	end


  end

  def destroy
    @review.likes.where(user_id: current_user.id).destroy_all
        respond_to do |format|
      format.html {redirect_to reviews_path}
      format.js
    end


  end


 private
 def set_review
 	@review = Review.find(params[:review_id])
 end

end