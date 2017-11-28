class InfosController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_info, only: [ :edit, :update]
  

  def show
    redirect_to root_path
  end

  def edit
  end

  def update
    if @info.update(info_params)
      redirect_to @info, notice: 'Your info was updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @info.delete
    redirect_to root_path, notice: "Your post was deleted"
  end

  private

  def set_info
    @info = Info.friendly.find(params[:id])
  end

  def info_params
    params.require(:info).permit(:area, :first_name, :last_name, :sobriety, :start_date, :picture)
  end

end