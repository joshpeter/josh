class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def up
    remove_column :clans, :believer_id
  end

  def down
    add_column :clans, :father_id, :integer
    add_column :clans, :mother_id, :integer
  end
end
