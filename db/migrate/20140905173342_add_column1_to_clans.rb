class AddColumn1ToClans < ActiveRecord::Migration
  def change
    add_column :clans, :kid_id, :integer
  end
end
