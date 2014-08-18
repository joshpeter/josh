class AddColumnNameToBelievers < ActiveRecord::Migration
  def change
    add_column :believers, :anniversary, :date
  end
end
