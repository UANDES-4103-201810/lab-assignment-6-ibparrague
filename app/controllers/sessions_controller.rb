class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
		user = User.find_by(email: params[:session][:email])
	#	password = params[:session][:password]
	#	id = params[:session][:id]
		confirm = user.nil?
		ok = false
		if confirm != true
			ok = true
		end
		if ok && user.email == params[:session][:email] && user.password == params[:session][:password]
			flash[:notice]="You have successfully logged in"
			redirect_to user_path(user.id)
		else
			flash[:notice] = "Error."
			redirect_to root_url
		end
	end

	def destroy
		#complete this method
		
	end
end
