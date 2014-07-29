class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
    
      t.timestamps
    end
 
    add_column :sections, :name, :string
  end
end
