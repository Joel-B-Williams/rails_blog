class SessionsController < ApplicationController

	def index
	end

	def show
	end

	def new
	end

	def create
		if login(params[:email], params[:password])
			redirect_back_or_to(articles_path)
		else
			render action: :new
		end
	end

	def destroy
		logout
		redirect_to(:authors)
	end

	def edit
	end

	def update
	end 
	
end