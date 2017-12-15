class UsersConnectController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    @connection = Connection.new(:user_id)
    @connection.user_id = current_user.id
    if @connection.valid 
      redirect_to connections_path, notice: 'You connected successfully.'
    else
      render :show
    end
  end

  

  
end
