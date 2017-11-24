class AddStartDateToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :start_date, :date
  end
end
