class ProfilesController < ApplicationController

	before_action :authorize_user, only: [:show_for_user]

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
		else
			@name = current_user.username
		end

		# Step #1: Show form
		@photo = BarberHaircut.new

		#this is for showing all the haircuts of the logged in barber
	    @all_photos = BarberHaircut.where(user_id: current_user.id).order('created_at')
	    # @all_photos = BarberHaircut.where(user_id: current_user.id, haircut: "").order('created_at')
	    # @all_photos = current_user.barber_haircuts.order('created_at')
	end

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


	# def delete_haircut
	#   @photo = BarberHaircut.find(params[:])
	#   @photo.destroy
	#   flash[:success] = "The photo was destroyed."
	#   redirect_to 'show_for_barber'
	# end


	  private

	  def photo_params

	  	# Pizza -> pizza
	  	# ThreeWordModel -> three_word_model

	  	# <input name="barber_haircut[haircut]">
	  	# <input name="barber_haircut[image]">
	    params.require(:barber_haircut).permit(:image, :haircut)
	  end


end
