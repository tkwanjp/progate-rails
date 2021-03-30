class PostsController < ApplicationController

    def index
      @posts = Post.all
    end

		def show
			@post = Post.find_by id: params[:id]
		end

		def new
			@post = Post.new
		end

		def create
			@post = Post.new content: params[:content]
			if @post.save
				flash[:notice] = 'Successfully tweeted!'
				redirect_to '/posts/index'
			else
				render 'posts/new'
			end
		end

		def edit
			@post = Post.find_by id: params[:id]
		end
		
		def update
			@post = Post.find_by id: params[:id]
			@post.content = params[:content]
			if @post.save
				flash[:notice] = 'Successfully edited!'
				redirect_to '/posts/index'
			else
				render 'posts/edit'
			end
		end

		def destroy
			@post = Post.find_by id: params[:id]
			if @post.destroy
				flash[:notice] = 'Your tweet has been deleted.'
				redirect_to '/posts/index'
			end
		end
end
