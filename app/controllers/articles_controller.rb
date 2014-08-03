class ArticlesController < ApplicationController
	attr_accessor :date
	before_action :admin?,only:[:new,:destroy,:update,:edit,:create]

	def create
		@article = Article.new(article_params)
		@article.date = Time.now.strftime("%b %Y")
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
		@articles = Article.order(created_at: :desc)
		@times = dates(@articles)
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

	def from_category
		@selected_articles = Article.where("date = ?",params[:time])
		respond_to do |format|
			format.js
			format.html{redirect_to(articles_path)}
		end
	end
	def next_articles
		@articles = Article.order(created_at: :desc)[params[:index].to_i..params[:index].to_i+5]
		respond_to do |format|
			format.js
			format.html{redirect_to(articles_path)}
		end
	end
	def previous_articles
		@articles = Article.order(created_at: :desc)[params[:index].to_i-10..params[:index].to_i]
		respond_to do |format|
			format.js
			format.html{redirect_to(articles_path)}
		end
	end

	private 
	def admin? 
		if !current_admin 
			redirect_to root_path, :notice => "you are not the admin"
		end
	end

	def article_params
		params.require(:article).permit(:title,:text,:description,:tags,:date)
	end

	def dates(articles)
		dates = []
		articles.each do |article|
			dates << article.created_at
		end
		dates
	end

end
