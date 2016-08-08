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
		
		
	end
end