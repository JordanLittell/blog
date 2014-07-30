class WelcomeController < ApplicationController
  def index
  	@articles = Article.all()
  	@photos = Photo.all()
  end
end
