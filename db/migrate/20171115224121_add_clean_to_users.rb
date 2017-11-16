class AddCleanToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :clean, :string, default: "true"
  end
end
