class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birthday
      t.string :gender

      t.timestamps null: false
    end
  end
end
