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
  	@x=0
  	@y=0
  	@user = current_user
  	@reviews = @user.reviews
  end

end
