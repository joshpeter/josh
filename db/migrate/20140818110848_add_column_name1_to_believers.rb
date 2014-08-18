class AddColumnName1ToBelievers < ActiveRecord::Migration
  def change
    add_column :believers, :spouse, :string
  end
end
