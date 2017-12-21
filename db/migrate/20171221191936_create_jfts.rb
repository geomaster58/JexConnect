class CreateJfts < ActiveRecord::Migration[5.1]
  def change
    create_table :jfts do |t|
      t.string :date
      t.string :title
      t.string :pgnum
      t.string :subtitle
      t.string :chapterpg
      t.text :content
      t.string :tip
      t.string :copyright

      t.timestamps
    end
  end
end
