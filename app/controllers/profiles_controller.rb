class ProfilesController < ApplicationController

	before_action :authorize_user, only: [:show_for_user]

# =========================================SHOWS========================================================

	def show_for_user
		if current_user.nil?
			@name = "Ironhacker"
		else
			@name = current_user.username
		end
	end

	def show_for_barber

		if current_user.nil?
			@name = "Ironhacker"
			@email = " "
		else
			@name = current_user.username
			@email = current_user.email
		end

		# Step #1: Show form
		@photo = BarberHaircut.new

		#this is for showing all the haircuts of the logged in barber
	    @all_photos = BarberHaircut.where(user_id: current_user.id).order('created_at')
	    # @all_photos = BarberHaircut.where(user_id: current_user.id, haircut: "").order('created_at')
	    # @all_photos = current_user.barber_haircuts.order('created_at')


	    #this is for schedule 
	    @tuesday_array= Schedule.where(barber_id: current_user.id, day: "Tuesday")
	    @wednesday_array= Schedule.where(barber_id: current_user.id, day: "Wednesday")
	    @thursday_array= Schedule.where(barber_id: current_user.id, day: "Thursday")
	    @friday_array= Schedule.where(barber_id: current_user.id, day: "Friday")
	    @saturday_array= Schedule.where(barber_id: current_user.id, day: "Saturday")
	    @sunday_array= Schedule.where(barber_id: current_user.id, day: "Sunday")
	end

# =====================================SCHEDULING=========================================================

	def schedule

		
	end

# =====================================UPLOIND & DELETING PICTURE=========================================

	def add_haircut
		  	# Step #3: Processing form
		@photo = BarberHaircut.new(photo_params)
		@photo.user_id = current_user.id
		if @photo.save
		   flash[:success] = "The photo was added!"
		   redirect_to "/profiles/barber"
		else
		   render 'show_for_barber'
		end
	end


	def delete_haircut
		p "====================================="
		p params[:photo_id]
	  @photo = BarberHaircut.find(params[:photo_id])
	  @photo.destroy
	  flash[:success] = "The photo was destroyed."
	  redirect_to "/profiles/barber"
	  
	end

# ===========================================BOOKING======================================================

def modify_booking
	correct_schedule= Schedule.find_by(barber_id: params[:barber_id], id: params[:id])
	if correct_schedule.update(booking: 0)
		render json: correct_schedule
		# im sending my correct_schedule as a response to the ajax 
	end
end


# ========================================================================================================

	  private

	  def photo_params

	  	# Pizza -> pizza
	  	# ThreeWordModel -> three_word_model

	  	# <input name="barber_haircut[haircut]">
	  	# <input name="barber_haircut[image]">
	    params.require(:barber_haircut).permit(:image, :haircut)
	  end


end
