class UsersConnectController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def connect
    redirect_to root_path
  end
end
