class PostsController < ApplicationController

  before_action :authenticate_user!


  def index
    @posts = Post.where(status: params[:status]).order(earlyputime: :desc) # here we are retrieving all the Post data, and store them in the variable @posts
    @posts -= current_user.posts

  end

  def userposts
    @posts_current_user = current_user.posts.where(status: params[:status]).order(earlyputime: :desc) # here we are retrieving all the Post data, and store them in the variable @posts
  end

  def postmanposts
    @postmanposts_current_user = Post.where(status: params[:status], postman_id: current_user.id).order(earlyputime: :desc) # here we are retrieving all the Post data, and store them in the variable @posts
    # @postmanposts_current_user = Post.where(status: params[:status], postman_id: current_user.id).order(earlyputime: :desc) # here we are retrieving all the Post data, and store them in the variable @posts
  end


  def create
    @post = current_user.posts.new(post_params)
    # @post = current_user.posts.new(post_params)

    # @post.save

    if @post.save
      render :json => {message: "saved", post: @post}
    else
      render :json => {message: "not saved"}
    end

    # @post = current_user.posts.new(post_params)

    # if @post.save
    #   render :json => {message: "saved", post: @post}
    # else
    #   render :json => {message: "not saved"}
    # end
  end

  def update
    @post = Post.find_by_id(params[:id])

    if @post.nil?
      render :json => {
        :message => { :message => "Cannot find post", :delete => false }
      }
    else
      @post.update(post_params)
    end
  end

  def show
    @post = Post.find_by_id(params[:id])

    if @post.nil?
      render :json => {
        :message => { :message => "Cannot find post" }
      }
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])

    if @post.nil?
      render :json => {
        :message => { :message => "Cannot find post", :delete => false }
      }
    else
      if @post.destroy
        render :json => {
          :message => { :message => "Successful", :delete => true }
        }
      else
        render :json => {
          :message => { :message => "Unsuccessful", :delete => false }
        }
      end
    end
  end

  private

  # post_params comes from the Post.new(post_params) from def create
  def post_params
    # params.require(:post).permit(:pulocation, :putime, :pudate, :destination, :delitime, :contactnum)
    params.require(:post).permit(:pulocation, :packagetype, :earlyputime, :lateputime, :destination, :earlydelitime, :latedelitime, :remarks, :user_id, :status, :postman_id)
  end

end

