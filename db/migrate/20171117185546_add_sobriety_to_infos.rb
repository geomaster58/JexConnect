class AddSobrietyToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :sobriety, :integer
  end
end
