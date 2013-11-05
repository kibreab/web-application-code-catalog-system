class AddFavouriteToBooks < ActiveRecord::Migration
  def change
    add_column :books, :favourtie, :boolean
  end
end
