class SessionsController < ApplicationController
	def create
		admin = Admin.authenticate(params[:username],params[:password])
		if admin
			session[:admin_id] = admin.id
			redirect_to root_url, :notice => "logged in"
		else
			flash.now.alert= "could not create session"
			render 'new'
		end
	end
	def destroy
		session[:admin_id] = nil
		redirect_to root_url, :notice=> 'logged out'
	end
end
