class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
		
		if is_user_logged_in? == true
			redirect_to root_url,notice: "OK"
		end
	end

	def destroy
		#complete this method

	end
end
