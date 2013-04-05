class AddCategoryIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :category_id, :integer
  end
end
