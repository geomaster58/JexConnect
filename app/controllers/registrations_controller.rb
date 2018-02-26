class RegistrationsController < Devise::RegistrationsController
  def new
    print "********NEW*******"
    super
    print "********NEWAFTERSUPER8******"
  end

  def create
    print "********BEFORESUPERCREATE*******"
    super do
        arr = []
        arr << Info.create!
        print "*********CREATE***********"
        resource.infos = arr
        resource.save
    end
  end

  def update
    super
  end
end