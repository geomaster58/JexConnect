class AddSoberToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sober, :boolean, default: true
  end
end
