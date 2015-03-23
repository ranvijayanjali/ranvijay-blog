class BlogsController < ApplicationController
def new
	@blog = Blog.new
end

def destroy
  @blog = Blog.find(params[:id])
  @blog.destroy
 
  redirect_to blogs_path
end

def update
  @blog = Blog.find(params[:id])
 
  if @blog.update(blog_params)
    redirect_to @blog
  else
    render 'edit'
  end
end

def edit
  @blog = Blog.find(params[:id])
end

def index
  @blogs = Blog.all
end

def show
  @blog = Blog.find(params[:id])
  respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
end
end

def create
  @blog = Blog.new(blog_params)
 
  if @blog.save
    redirect_to @blog
  else
    render 'new'
  end
end
 
private
  def blog_params
    params.require(:blog).permit(:user_id, :name, :text)
  end
end
