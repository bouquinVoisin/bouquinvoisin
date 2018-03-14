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
    @user = current_user

  end

  def update
   @user = current_user
       if @user.update(user_params)
      flash[:success] = "Vous avez bien édité votre profil"
      redirect_to profile_path
    else render 'edit'
    end
  end

private 

  def user_params
    params.require(:users).permit(:name, :email, :bio, :address)
  end

end
