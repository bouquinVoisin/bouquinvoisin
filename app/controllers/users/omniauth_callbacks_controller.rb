class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def facebook

  	puts "==="
  	puts request.env['omniauth.auth'].inspect
  	puts "==="

  end

end
