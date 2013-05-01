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

require 'spec_helper'

describe Client do
  pending "add some examples to (or delete) #{__FILE__}"
end
