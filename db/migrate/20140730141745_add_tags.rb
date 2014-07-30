class AddTags < ActiveRecord::Migration
  def change
  	add_column :articles, :tags, :string
  	add_column :photos, :tags, :string
  end
end
