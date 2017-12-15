class UsersConnectController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def follow
    User.follow(2)
    redirect_to root_path
  end

  

  
end
