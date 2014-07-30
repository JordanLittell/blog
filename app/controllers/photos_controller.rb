class PhotosController < ApplicationController
	before_action :admin?,only:[:new,:destroy,:update,:edit,:create]
	def create
		@photo =Photo.new(photo_params)
		@photo.file_data = params[:file]
		if @photo.save!
			redirect_to photos_path, :notice => 'image upload successful'
		else 
			render 'new'
		end
	end
	def index
		@photos = Photo.all();
	end
	def edit
		@photo = Photo.find(params[:id])
	end
	def update
		@photo = Photo.find(params[:id])
		if @photo.save
			redirect_to photos_path, :notice => "update successful"
		else
			render 'new', :notice => "update not successful"
		end
	end
	def destroy 
		@photo = Photo.find(params[:id])
		if @photo.delete 
			redirect_to photos_path, :notice => "photo deleted"
		else 
			render photos_path, :notice => "Unable to delete photo"
		end
	end
	def new 
		@photo = Photo.new()
	end
end

private 
	def photo_params
		params.require(:photo).permit(:title,:description,:file_data,:tags)
	end
	def admin?
		unless current_admin 
			flash[:error] = "You are not an admin"
			redirect_to photos_path
		end
	end
