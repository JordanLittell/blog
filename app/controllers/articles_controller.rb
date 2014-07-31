class ArticlesController < ApplicationController
	before_action :admin?,only:[:new,:destroy,:update,:edit,:create]
	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render 'new', :error =>"Could not submit"
		end
	end
	def destroy
		@article = Article.find_by_id(params[:id])
		@article.destroy
		redirect_to articles_path
		# redirect_to @article
	end
	def new 
		@article = Article.new()
	end
	def show
		@article = Article.find(params[:id])
		@photos = Photo.all();
	end

	def index

		@articles = Article.paginate(:page => params[:page], :per_page => 10)
	end
	def edit 
		@article = Article.find(params[:id])
	end
	def update
		@article = Article.find(params[:id])
		@article.update(article_params)
		if @article.update(article_params)
			redirect_to @article
		else 
			render "edit"
		end
	end

	private 
	def admin? 
		if !current_admin 
			redirect_to root_path, :notice => "you are not the admin"
		end
	end

	def article_params
		params.require(:article).permit(:title,:text,:description,:tags)
	end
end
