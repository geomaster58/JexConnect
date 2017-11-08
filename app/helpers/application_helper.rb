module ApplicationHelper
  def time_dif user
    ((Date.today.strftime("%j").to_i)-(user.start_date.strftime("%j").to_i)).to_s
  end
end
