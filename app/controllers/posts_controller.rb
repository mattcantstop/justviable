class PostsController < ApplicationController
  
  def home
    
  end
  
  def contact
    
  end
  
  def new
    @post = Post.new(params[:post])
  end
  
  def create
    @post = Post.new(params[:post])
      if @post.save
        redirect_to posts_url, notice: "Successfully Saved"
      else
        redirect_to new_post_url, notice: "Something Went Wrong, Let's Try That Again."
      end
  end
  
  def index
    @posts = Post.all(params[:post])
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
      if @post.update_attributes(params[:post])
        redirect_to @post, notice: "Succesfully Updated Post"
      else
        redirect_to edit_post_url, notice: "Something Went Wrong, Please Try Again"
      end
  end
  
end
