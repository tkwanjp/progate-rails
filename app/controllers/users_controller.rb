class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(
			name: params[:name],
			email: params[:email]
		)
		if @user.save
			flash[:notice] = 'New user made!'
			redirect_to '/posts/index'
		else
			render 'users/new'
		end
	end
end
