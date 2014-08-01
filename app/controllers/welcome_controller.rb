class WelcomeController < ApplicationController
  def index
  	@articles = Article.order(date: :desc);
  	@photos = Photo.order(created_at: :desc);
  end
end
