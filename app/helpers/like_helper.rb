#encoding: utf-8
module LikeHelper
  def like_link_for(target)
    link_to "喜欢", like_path(:resource_name => target  .class, :resource_id => target.id), :method => :post
  end

  def unlike_link_for(target)
    link_to "取消喜欢", like_path(:resource_name => target.class, :resource_id => target.id), :method => :delete
  end
end