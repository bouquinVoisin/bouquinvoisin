class MessagesController < ApplicationController
  before_action :authenticate_user!
  
  def new
  	@message = Message.new
  	@@user = User.find(params[:format])
  	
  end

  def create
  	@message = Message.new(message_params)
  	@message.user_id = current_user.id
  	
  	
  	if @message.save
	  MessageMailer.new_message(@message, @@user).deliver_now
	  flash[:success] = "Votre message a bien été envoyé !"
	  redirect_to root_path
	else flash[:error] = "Votre message n'a pas été envoyé, veuillez réssayer ultérieurement ..."
	  redirect_to root_path
	end  

  end

  private 
  def message_params
  	params.require(:message).permit(:body)
  end

end
