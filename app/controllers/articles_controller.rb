class ArticlesController < ApplicationController

	include ArticlesHelper

	before_filter :request_authenticity_tokens, except: [:index, :show]

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find_by(id: params[:id])
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find_by(id: params[:id])
		@article.destroy
		redirect_to articles_path
	end

	def edit
		@article = Article.find_by(id: params[:id])
	end

	def update
		@article = Article.find_by(id: params[:id])
		@article.update(article_params)

		redirect_to article_path(@article)
	end
end
