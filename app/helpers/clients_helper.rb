#encoding: utf-8
module ClientsHelper
  def show_district district_id
    district_id.present? ? District.find(district_id).name : '地区'
  end
end
