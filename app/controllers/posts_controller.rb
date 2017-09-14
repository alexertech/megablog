class PostsController < ApplicationController
  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_post, only: [:show, :edit, :update, :destroy]


  def index
    # Default
    # @post = Post.all

    if params[:category]
      @category_id = Category.find_by(name: params[:category]).id
      @posts = Post.where(category_id: @category_id).order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    elsif params[:tag]
      @posts = Post.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 5)
    else
      @posts = Post.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    end

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
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: "Deleted!"
  end


private

  def post_params
    params.require(:post).permit(:title, :content, :category_id, :tag_list)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
