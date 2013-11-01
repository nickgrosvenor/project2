class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		User.create(params[:user]
			.permit(:name, :email, :password, :password_confirmation))
		redirect_to action:"new"
	end

	def index 
		@game=Game.new
	end	

	def delete
		User.delete(params[:user]
			.permit(:name, :email, :password, :password_confirmation))
		redirect_to action:"delete"
	end

	def show
		@user = User.find(current_user.id)
	end
end