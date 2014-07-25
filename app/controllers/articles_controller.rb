class ArticlesController < ApplicationController

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to 'new'
	end
	def new 
		@article = Article.new()
	end
	def show
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all()
	end
	def edit 
		@article = Article.find(params[:id])
	end
	def update
		@article = Article.find(params[:id])
		@article.update(article_params)
		if @article.update(article_params)
			redirect_to "index"
		else 
			render "edit"
		end
	end

	private 

	def article_params
		params.require(:article).permit(:title,:text)
	end
end
