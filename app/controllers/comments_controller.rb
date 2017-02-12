class CommentsController < ApplicationController
	
	def index
		# @comments = Comment.where(article_id: params[:])
	end
	
	def show
	end
	
	def new
	end
	
	def create 
		@comment = Comment.new(comment_params)
		@comment.article_id = params[:article_id]
		@comment.save
		redirect_to article_path(@comment.article)
	end
	
	def comment_params
  	params.require(:comment).permit(:body)
	end
	
	def destroy
	end
	
	def edit
	end
	
	def update
	end
end