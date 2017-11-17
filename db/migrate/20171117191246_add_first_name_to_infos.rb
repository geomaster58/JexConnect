class AddFirstNameToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :first_name, :string
  end
end
