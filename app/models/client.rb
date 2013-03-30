class Client < ActiveRecord::Base
  attr_accessible :address, :description, :name, :opening_hour, :phone_num, :avatar
  mount_uploader :avatar, AvatarUploader
end
