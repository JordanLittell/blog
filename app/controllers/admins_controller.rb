class AdminsController < ApplicationController
	def new 
		@admin = Admin.new
		render 'new'
	end
	def create
		@admin = Admin.new(params[:admin])
		if @admin.save
			redirect_to root_url, :notice => "Welcome"
		else 
			render 'new'
		end
	end
end
