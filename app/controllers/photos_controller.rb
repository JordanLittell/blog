class PhotosController < ApplicationController
  def create
  	@photo = Photo.new(photo_params)
    if @photo.save
      redirect_to root_url, :notice => "Photo added"
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

  def update
  
  end
  private 

  def photo_params
    params.require(:photo).permit(:title,:description)
  end
end
