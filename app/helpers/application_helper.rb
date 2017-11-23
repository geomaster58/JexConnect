module ApplicationHelper
  def time_dif user
    # ((Date.today.strftime("%j").to_i)-(user.start_date.strftime("%j").to_i)).to_s unless user.start_date.nil?
    if user.start_date != nil
      days = (Date.today - user.start_date).to_i 
      "#{days / 365} years and #{days % 365} days"
    else
      "0 years and 0 days"  
    end
  end

  def first_name user
    user.infos.first.first_name
  end

  def last_name user
    user.infos.first.last_name
  end

  def area user
    user.infos.first.area
  end

  def status user
    user.infos.first.sobriety
  end
end
