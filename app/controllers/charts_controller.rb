class ChartsController < ApplicationController
  def index
    @likes = Like.count(:group => "product_id")
    @likes.each do |l|
      puts l[1]
      puts Product.find(l[0]).name
      l[2] = Product.find(l[0]).name
    end
    render "index", :layout => "chart"
  end
end
