module ApplicationHelper
  
  def first_name user
      user.infos.first.first_name.nil? ? "" : user.infos.first.first_name
  end

  def last_name user
     user.infos.first.last_name.nil? ? "" : user.infos.first.last_name
  end

  def area user
    user.infos.first.area.nil? ? "" : user.infos.first.area  
  end

  def status user
    user.infos.first.sobriety.nil? ? "" : user.infos.first.sobriety.capitalize + "!"
  end

  def start_date user
    user.infos.first.start_date.nil? ? Date.today : user.infos.first.start_date
  end

  def time_dif user
    # ((Date.today.strftime("%j").to_i)-(user.start_date.strftime("%j").to_i)).to_s unless user.start_date.nil?
    date = start_date(user)
    
    if date != nil
      days = (Date.today - date).to_i 
      "#{days / 365} years and #{days % 365} days"
    else
      "0 years and 0 days"  
    end
  end

   
end
