class AddAvatarToClient < ActiveRecord::Migration
  def change
    add_column :clients, :avatar, :string
  end
end
