class AddAdminIdToStats < ActiveRecord::Migration
  def change
  	add_column :stats,:admin_id, :integer
  end
end
