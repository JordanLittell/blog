class AddNewColumnToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :file_data, :string
  end
end
