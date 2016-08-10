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

		@photo = BarberHaircut.new(photo_params)
	    if @photo.save
	      flash[:success] = "The photo was added!"
	    end

	    @all_photos = BarberHaircut.order('created_at')

	end

	  # def index
	  #   @photos = Barber_haircut.order('created_at')
	  # end

	  # def new
	  #   @photo = Barber_haircut.new
	  # end

	  # def create
	  #   @photo = Photo.new(photo_params)
	  #   if @photo.save
	  #     flash[:success] = "The photo was added!"
	  #     redirect_to root_path
	  #   else
	  #     render 'new'
	  #   end
	  # end

	  private

	  def photo_params
	    params.require(:barber_haircuts).permit(:image, :haircut)
	  end


end