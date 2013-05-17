#encoding: utf-8
module ClientsHelper
  def show_district district_id
    return '全部地区' if district_id == 'all'
    district_id.present? ? District.find(district_id).name : '地区'
  end
end
