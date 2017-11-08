class AddStartDateToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :start_date, :date, default: nil
  end
end
