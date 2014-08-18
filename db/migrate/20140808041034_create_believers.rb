class CreateBelievers < ActiveRecord::Migration
  def change
    create_table :believers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :status
      t.date :dob

      t.timestamps
    end
  end
end
