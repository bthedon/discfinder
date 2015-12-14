class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
