class UsersController < ApplicationController

  def show
  	@i = 0
  	@j=0
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end

  def profile
  	@i = 0
  	@j=0

  	@user = current_user
  	@reviews = @user.reviews

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

private 

  def user_params
    params.require(:user).permit(:bio, :address)
  end

end
