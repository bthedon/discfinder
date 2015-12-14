class AddIsFoundToDiscs < ActiveRecord::Migration
  def change
    add_column :discs, :is_found, :boolean, default: false
  end
end
