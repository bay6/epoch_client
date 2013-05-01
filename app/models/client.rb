# == Schema Information
#
# Table name: clients
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  opening_hour :string(255)
#  address      :string(255)
#  phone_num    :string(255)
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  avatar       :string(255)
#  category_id  :integer
#  latitude     :float
#  longitude    :float
#

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
