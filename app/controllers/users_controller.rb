class UsersController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :js

  def show

    @user = User.find(params[:id])
    @reviews = @user.reviews
    @message = Message.new
  end

  def profile


  	@user = current_user
  	@reviews = @user.reviews

    @reviews_liked = []
    @user.likes.each do |like|
      @reviews_liked << Review.find(like.review_id)
    end
   @reviews_liked


  end

  def edit
    @user = User.find(params[:id])

  end

  def update
   @user = User.find(params[:id])
     if @user.update(user_params)
       flash[:success] = "Vous avez bien édité votre profil"
       redirect_to profile_path
    else render 'edit'
    end
  end

  def send_email
    @message = Message.new(message_params)
    @user = User.find(params[:id])

    @message.user_id = current_user.id
    @message.save
    if @message
    MessageMailer.new_message(@message, @user).deliver_now
    respond_to do |format|
      format.js { render nothing: true }
    end 
    
  else flash[:error] = "Votre message n'a pas été envoyé, veuillez réssayer ultérieurement ..."
    redirect_to @user
end 

  end

private 

  def user_params
    params.require(:user).permit(:bio, :address, :avatar, :name, :postal_code)
  end

    def message_params
    params.require(:message).permit(:body)
  end

end
