class AddSlugToDiscs < ActiveRecord::Migration
  def change
    add_column :discs, :slug, :string
  end
end
