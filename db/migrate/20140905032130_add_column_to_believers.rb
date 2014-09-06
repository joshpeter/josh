class AddColumnToBelievers < ActiveRecord::Migration
  def change
    add_column :believers, :baptised, :string
    add_column :believers, :place, :string
    add_column :believers, :gender, :string
  end
end
