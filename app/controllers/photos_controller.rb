class PhotosController < ApplicationController
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

	def new 
		@photo = Photo.new()
	end
end

private 
	def photo_params
		params.require(:photo).permit(:title,:description,:file_data)
	end
