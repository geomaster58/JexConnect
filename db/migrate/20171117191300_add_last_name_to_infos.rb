class AddLastNameToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :last_name, :string
  end
end
