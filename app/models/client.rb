class Client < ActiveRecord::Base
  attr_accessible :address, :description, :name, :opening_hour, :phone_num, :avatar, :industry_list
  mount_uploader :avatar, AvatarUploader
  acts_as_taggable_on :industry
end
