class PostsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_post, only: [:show, :edit, :destroy, :update]

  def index
    redirect_to root_path
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  
  private

  def post_params
    params.require(:post).permit(:body)
  end

end
