class PostsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_post, only: [:show, :edit, :destroy, :update]

  def create
    @post = current_user.posts.build(comment_params)
  end

  
  private

  def post_params
    params.require(:post).permit(:body)
  end

end
