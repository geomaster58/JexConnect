class InfosController < ApplicationController
  def new
    if current_user.infos.count == 1
      redirect_to edit_infos_path
    end  
  end

  def create
    
  end

  def update
    
  end

  def edit
    
  end
end