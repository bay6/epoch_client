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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "MyString"
    opening_hour "MyString"
    address "MyString"
    address "MyString"
    phone_num "MyString"
    description "MyText"
  end
end
