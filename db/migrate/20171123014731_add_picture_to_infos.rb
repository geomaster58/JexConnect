class AddPictureToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :picture, :text
  end
end
