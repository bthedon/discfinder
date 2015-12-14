class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
