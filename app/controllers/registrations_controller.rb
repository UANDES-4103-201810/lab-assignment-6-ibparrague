class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    #complete this method
	    user = User.new(create_params)
	    if user.save == true
	    	redirect_to root_url, notice: "You have successfully sing in."
	    else 
			redirect_to request.referrer, notice: "Failed sing in."
		end
	end
	
	def create_params
		params.require(:registrations).permit(:name, :last_name, :email, :phone, :password)
		
	end
end
