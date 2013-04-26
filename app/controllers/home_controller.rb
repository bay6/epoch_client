class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @users = User.all
  end

  def download
    send_file "#{Rails.root}/public/app/epoch-01.apk", :type=>"application/zip", :x_sendfile=>true
  end
end
