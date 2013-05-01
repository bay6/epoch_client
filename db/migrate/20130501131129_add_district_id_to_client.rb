class AddDistrictIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :district_id, :integer
  end
end
