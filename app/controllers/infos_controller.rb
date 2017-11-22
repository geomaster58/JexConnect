class InfosController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_info, only: [ :edit, :update]
  

  def new
    if current_user.infos.count == 1
      redirect_to edit_post_path
    else  
      @info = Info.new
    end  
  end

  def create
    @info = Info.new(info_params)
    @info.user_id = current_user.id
    if @info.save
      redirect_to posts_path, notice: 'Your post was created successfully'
     else
     render :new  
   end
  end

  def show

  end

  def edit
  end

  def update
    if @info.update(info_params)
      redirect_to @info, notice: 'Your post was updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @info.delete
    redirect_to posts_path, notice: "Your post was deleted"
  end

  private

  def set_info
    @post = Info.find(params[:id])
  end

  def info_params
    params.require(:info).permit(:area, :first_name, :last_name, )
  end

end