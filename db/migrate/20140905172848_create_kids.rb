class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.integer :believer_id
      t.integer :clan_id
      t.string :name

      t.timestamps
    end
  end
end
