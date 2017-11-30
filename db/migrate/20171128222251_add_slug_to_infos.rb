class AddSlugToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :slug, :string
    add_index :infos, :slug, unique: true
  end
end
