class CreateDiscs < ActiveRecord::Migration
  def change
    create_table :discs do |t|
      t.string :brand
      t.string :name
      t.string :color
      t.integer :user_id
      t.integer :course_id
      t.integer :hole_id
      t.date :day_lost

      t.timestamps null: false
    end
  end
end
