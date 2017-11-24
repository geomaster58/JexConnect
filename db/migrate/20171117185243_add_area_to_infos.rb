class AddAreaToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :area, :string
  end
end
