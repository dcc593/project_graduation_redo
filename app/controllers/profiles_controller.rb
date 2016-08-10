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
		# Step #1: Show form
		if current_user.nil?
			@name = "Ironhacker"
		else
			@name = current_user.username
		end

		@photo = BarberHaircut.new

	  @all_photos = BarberHaircut.where(user_id: current_user.id).order('created_at')
	  	# @all_photos = current_user.barber_haircuts.order('created_at')

	end


	  # def index
	  #   @photos = Barber_haircut.order('created_at')
	  # end

	  # def new
	  #   @photo = Barber_haircut.new
	  # end

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

	  private

	  def photo_params
	  	# Pizza -> pizza
	  	# ThreeWordModel -> three_word_model

	  	# <input name="barber_haircut[haircut]">
	  	# <input name="barber_haircut[image]">
	    params.require(:barber_haircut).permit(:image, :haircut)
	  end


end
