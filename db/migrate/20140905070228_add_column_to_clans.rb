class AddColumnToClans < ActiveRecord::Migration
  def change
    add_column :clans, :father_id, :integer
    add_column :clans, :mother_id, :integer
  end
end
