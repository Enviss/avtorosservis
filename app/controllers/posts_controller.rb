class PostsController < ApplicationController
  def new
   @post = Post.new
  end

  def show
  end

  def view
    @post = Post.find_by_url(params[:url])
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      render 'posts/show'
    else
      render 'posts/new'
    end
  end

  def edit
    @post = Post.find_by_url(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      render 'posts/show'
    else
      render 'edit'
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_show_url
  end

end
