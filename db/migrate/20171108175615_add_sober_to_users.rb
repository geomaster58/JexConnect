class AddSoberToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sober, :string, default: "true"
  end
end
