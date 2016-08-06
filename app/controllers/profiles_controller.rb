class ProfilesController < ApplicationController
	def show
		if current_user.nil?
			@name = "Ironhacker"
		else
			@name = current_user.username		
		end
	end
end