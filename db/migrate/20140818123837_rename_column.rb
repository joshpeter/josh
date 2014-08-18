class RenameColumn < ActiveRecord::Migration
  def up
  	remove_column :believers, :phone
  	add_column :believers, :phone, :string
  end

  def down
  end
end
