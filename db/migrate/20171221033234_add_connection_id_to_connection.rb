class AddConnectionIdToConnection < ActiveRecord::Migration[5.1]
  def change
    add_column :connections, :connection_id, :integer
  end
end
