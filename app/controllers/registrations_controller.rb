class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super do
        resource.info = Info.new
        resource.save
    end
  end

  def update
    super
  end
end