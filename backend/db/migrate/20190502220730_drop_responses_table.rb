class DropResponsesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :responses
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
