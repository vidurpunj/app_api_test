class PostsController < ApplicationController

  def index
    @posts = Post.all
    # render json: { post: @posts.to_json, status: 200 }
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: { message: "Post created successfully", status: 200 }
    else
      render json: { message: "Post created successfully", status: 400 }
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      render json: { message: "Post updated successfully", status: 200 }
    else
      render json: { message: "Post not updated successfully", status: 400 }
    end
  end

  def show
    @post = Post.find(params[:id])
    # render json: { post: @post.to_json, status: 200 }
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    unless @post.blank?
      @post.destroy
      render json: { "message": "Post delete successfully", status: 200 }
    else
      render json: { "message": "Post with this id does not exists", status: 200 }
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :available, :published_at)
  end

end
