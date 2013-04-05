#encoding: utf-8
class AddCategoryData < ActiveRecord::Migration
  def up
    %w(餐馆 律师 医生 美容).each{|x| Category.create(name: x)}
  end

  def down
    Category.destroy_all
  end
end
