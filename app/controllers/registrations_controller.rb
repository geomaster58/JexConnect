class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super do
        arr = []
        arr << Info.create!
        resource.infos = arr
        resource.save
    end
  end

  def update
    super
  end
end