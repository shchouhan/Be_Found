class PostsController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :set_post, only: %i[show edit update destroy]
  #before_action :authenticate_searcher!
  #load_and_authorize_resource

  def index
    @posts = Post.all
  end

  def search
    byebug
    @post = Post.where("job_role LIKE?", "%" + params[:category_type] + "%")
  end

  def new
    @post = Post.new
    
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      #render json: @demo
      byebug
      redirect_to root_path#{params[:id]}"
    else
      render "new", status: :unprocessable_entity
    end
  end

  def show
    byebug
  end

  def edit
  end
  def update
    @post.update(post_params)
    #render json: @demo
    redirect_to post_path(@post), notice: 'Post has been updated successfully!'
    # else
    #    render :edit
    #   # render plain: "OK"
    # end
  end

  def destroy
    @post.destroy
    #render json: @demo
    #byebug
    redirect_to posts_path, notice: 'Post has been deleted successfully!'
  end

  private
  def post_params
    params.require(:post).permit(:job_role, :category_type, :job_description, :vacancies, contractor_attributes: [:id, :name, :contact, :address])
  end

  def set_post
    @post = Post.find(params[:id])
  end

  private
  def authenticate
    authenticate_or_request_with_http_digest do |username|
      SEARCHERS[searchername]
    end
  end

end
