class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.new_message.subject
  #
  def new_message(message, user)
    @message = message
    @user = user

    mail to: @user.email,
    	 subject: "Nouveau message de Bouquin Voisin"

  end
end
