class AddNewColumnToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :binary_data, :binary
  	add_column :photos, :content_type, :string
  end
end
