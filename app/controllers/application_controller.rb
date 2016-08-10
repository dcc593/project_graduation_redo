class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
  	if @current_user.nil?
      # Because of find_by, current_user is an object (the entire user's row)
  		@current_user = User.find_by(id: session[:user_id])
  	end

  	@current_user
  end

  def authorize_user
  	unless current_user
  		flash[:message] = 'Please log in or register'
  		redirect_to '/signup_or_login'
    end
  end
end
