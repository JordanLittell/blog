class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :hours_worked
      t.integer :hours_slept
      t.integer :hours_fitness
      t.integer :day_rating
      t.integer :mg_caffeine

      t.timestamps
    end
  end
end
