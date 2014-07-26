class SessionsController < ApplicationController
	def new 

	end
	def create
		admin = admin.authenticate(params[:username],params[:password])
		if admin
			session[:admin_id] = admin.id
			redirect_to root_url
		else
			flash.now.alert= "invalid passwor/username"
			render 'new'
		end
	end
end
