class WelcomeController < ApplicationController
  def index
  	@articles = Article.order(date: :asc);
  	@photos = Photo.order(created_at: :asc);
  end
end
