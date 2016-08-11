class UsersController < ApplicationController

	

	def new
	end

	def index
	  @users = User.all
	end

	def create_for_registration
	  user = User.new(user_params)

	  if user.save
	  	if user.role == "barber"

	  	Schedule.create(day: "Tuesday", time: "8:00-9:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "9:00-10:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "10:00-11:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "11:00-12:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "12:00-1:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "1:00-2:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "2:00-3:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "3:00-4:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "4:00-5:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "5:00-6:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "6:00-7:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Tuesday", time: "7:00-8:00 PM", booking: 1, barber_id: user.id )

	  	Schedule.create(day: "Wednesday", time: "8:00-9:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "9:00-10:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "10:00-11:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "11:00-12:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "12:00-1:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "1:00-2:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "2:00-3:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "3:00-4:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "4:00-5:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "5:00-6:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "6:00-7:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Wednesday", time: "7:00-8:00 PM", booking: 1, barber_id: user.id )

	  	Schedule.create(day: "Thursday", time: "8:00-9:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "9:00-10:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "10:00-11:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "11:00-12:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "12:00-1:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "1:00-2:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "2:00-3:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "3:00-4:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "4:00-5:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "5:00-6:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "6:00-7:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Thursday", time: "7:00-8:00 PM", booking: 1, barber_id: user.id )

	  	Schedule.create(day: "Friday", time: "8:00-9:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "9:00-10:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "10:00-11:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "11:00-12:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "12:00-1:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "1:00-2:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "2:00-3:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "3:00-4:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "4:00-5:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "5:00-6:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "6:00-7:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Friday", time: "7:00-8:00 PM", booking: 1, barber_id: user.id )

	  	Schedule.create(day: "Saturday", time: "8:00-9:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "9:00-10:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "10:00-11:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "11:00-12:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "12:00-1:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "1:00-2:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "2:00-3:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "3:00-4:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "4:00-5:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "5:00-6:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "6:00-7:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Saturday", time: "7:00-8:00 PM", booking: 1, barber_id: user.id )

	  	Schedule.create(day: "Sunday", time: "8:00-9:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "9:00-10:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "10:00-11:00 AM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "11:00-12:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "12:00-1:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "1:00-2:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "2:00-3:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "3:00-4:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "4:00-5:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "5:00-6:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "6:00-7:00 PM", booking: 1, barber_id: user.id )
	  	Schedule.create(day: "Sunday", time: "7:00-8:00 PM", booking: 1, barber_id: user.id )


	  	end

	    redirect_to '/signup_or_login'

	    # ^^^^^this need to redirect_to the registered profile when created
	  end
	end

	def create_for_login
	    user = User.find_by(email: params[:email])
	    p user.inspect
	    p params.inspect
	    p "============================"
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
