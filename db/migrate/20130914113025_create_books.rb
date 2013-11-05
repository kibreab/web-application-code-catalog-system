class CreateBooks < ActiveRecord::Migration
  def self.up
  	add_column :books, :title, :string
    add_attachment :books, :coverpic
  end

  def self.down
    remove_column :books, :coverpic_file_name
    remove_column :books, :coverpic_content_type
    remove_column :books, :coverpic_file_size
    remove_column :books, :coverpic_updated_at
    remove_column :books, :title, :string
  end
end
