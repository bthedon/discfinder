class CreateCourseHoles < ActiveRecord::Migration
  def change
    create_table :course_holes do |t|
      t.integer :course_id
      t.integer :hole_id
      t.string :terrain

      t.timestamps null: false
    end
  end
end
