class DropKidsTable < ActiveRecord::Migration
  def up
  	drop_table :kids
  end

  def down
  end
end
