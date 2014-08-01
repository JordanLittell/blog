class AdminsController < ApplicationController

	def new 
		@admin = Admin.new
		render 'new'
	end
	def create
		@admin = Admin.new(admin_params)
		if Admin.all().length>=1
			render 'new', :notice=>"nice try"
		elsif @admin.save
			redirect_to root_url, :notice => "Welcome"
		end
	end

	private 

	def admin_params
		params.require(:admin).permit(:username,:password,:password_confirmation)
	end
end
