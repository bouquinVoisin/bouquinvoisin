class UsersController < ApplicationController

  def show
  	@i = 0
  	@j=0
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end

  def profile
  	@user = current_user
  end

end
