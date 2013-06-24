require 'open-uri'
require 'base64'
require 'json'

class TabController < ApplicationController
  def index
    usrcookie = cookies[:sessionkey]
    if usrcookie.nil?
      usrcookie = cookies[:sessionkey] = Digest::SHA1.hexdigest(Time.now.to_time.to_i.to_s)
    end
    @products = Product.all()
  end
  
  def app_redirect
    render 'redirect_app' , :layout => 'redirect'
  end
  
  def like
    usrcookie = cookies[:sessionkey]
    like = Like.new
    like.cookie = usrcookie
    like.product_id = params["id"]
    puts like.inspect
    like.save
  end
end
