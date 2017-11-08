class UsersConnectController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def connect
    
  end
end
