class PostsController < ApplicationController

	respond_to :html, :json
	def new
		 @post = Post.new
	end
	def edit
	  @post = Post.find(params[:id])
	end
	def index
	  @posts = Post.where(:user_id => current_user.id)
	end
	def destroy
	  @post = Post.find(params[:id])
	  @post.destroy
	 
	  redirect_to posts_path
	end
	def update
	  @post = Post.find(params[:id])
	 
	  if @post.update(post_params)
	    respond_with @post
	  else
	    render 'edit'
	  end
	end

	def show
	  @post = Post.find(params[:id])
	end
	def create
	  @post = Post.new(post_params)
	 
	  if @post.save
	    redirect_to posts_path
	  else
	    render 'new'
	  end
	end
	 
	private
	  def post_params
	    params.require(:post).permit(:user_id, :title, :status, :description)
	  end
end


