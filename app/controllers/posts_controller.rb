class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @post = Post.all
  end

  def show
    # The before_action will trigger the action to find in the
    # database the relevant post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to @post
    else
      render 'new'
  end

  def edit
    # The before_action will trigger the action to find in the
    # database the relevant post
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Updated!"
    else
      render 'edit'
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: "Deleted!"
  end
end

private

  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end

  def find_post
    @post = Post.find(param[:id])
  end

end
