class UsersController < ApplicationController

	

	def new
	end

	def index
	  @users = User.all
	end

	def create_for_registration
	  user = User.new(user_params)
	  if user.save
	    redirect_to '/signup_or_login'

	    # ^^^^^this need to redirect_to the registered profile when created
	  end
	end

	def create_for_login
	    user = User.find_by(email: params[:email])
	    if user && user.authenticate(params[:password]) && (user.role == "user")
	        session[:user_id] = user.id
	        redirect_to '/profiles/user'

	    # ^^^^^this need to redirect_to the login profile when created

		elsif user && user.authenticate(params[:password]) && (user.role == "barber")
	        session[:user_id] = user.id
	        redirect_to '/profiles/barber'

	    else
	      redirect_to '/signup_or_login'
	    end
	end   

	def destroy_for_logout
	  session.clear
	  redirect_to '/signup_or_login'
	  
	end

	private

	def user_params
	   params.require(:user).permit(:first_name, :last_name, :role, :username, :email, :password, :password_confirmation)
	end

end
