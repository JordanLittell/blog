class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.text :description
      t.timestamps
    end
    add_column :articles, :section, :string
    add_index :articles ,[:section, :created_at]
  end
end
