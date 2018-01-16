class UsersConnectController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def connect 
    @user = User.find(params[:id])
    @connection = Connection.create(user_id: current_user.id, connection_id: @user.id)
    redirect_to connections_path, notice: "You are now connected to #{@user.email} pending approval." 
  end 
  
end
