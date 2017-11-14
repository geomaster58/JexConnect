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
end
