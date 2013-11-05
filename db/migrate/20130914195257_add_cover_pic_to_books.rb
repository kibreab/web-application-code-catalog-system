class AddCoverPicToBooks < ActiveRecord::Migration
  def change
    add_column :books, :coverpic, :string
    add_column :books, :title, :string
  end
end
