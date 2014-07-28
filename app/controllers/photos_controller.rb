class PhotosController < ApplicationController
  require 'carrierwave/orm/activerecord'
  def create
  	@photo = Photo.new(photo_params)
    @photo.file_data = params[:file]

    if @photo.save!
      redirect_to 'index', :notice=>"success"
    else 
      render 'new'
    end
  end

  def destroy

  end
  def index
    @photos = Photo.all()
  end

  def new
    @photo = Photo.new()
  end

  private 

  def photo_params
    params.require(:photo).permit(:title,:description)
  end
end
