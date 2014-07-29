class WelcomeController < ApplicationController
  def index
  	@articles = Article.all()
  	@photos = Photos.all()
  end
end
