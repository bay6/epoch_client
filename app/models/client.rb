class Client < ActiveRecord::Base
  include Likeable
  attr_accessible :address, :description, :name, :opening_hour, :phone_num, :avatar, :industry_list, :category, :category_id, :remove_avatar, :avatar_cache, :latitude, :longitude
  mount_uploader :avatar, AvatarUploader
  acts_as_taggable_on :industry
  belongs_to :category

  def visit_number
    $redis.get("client_of_#{id}_visit").to_i
  end

  def visit_add_one
    $redis.set("client_of_#{id}_visit", visit_number + 1)
  end
end
