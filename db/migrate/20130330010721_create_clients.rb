class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :opening_hour
      t.string :address
      t.string :address
      t.string :phone_num
      t.text :description

      t.timestamps
    end
  end
end
