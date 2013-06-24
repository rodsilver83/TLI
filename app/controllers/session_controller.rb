class SessionController < ApplicationController
  def login
    @user = User.new
  end
  
  def signin
    @user = User.new(params[:user])
    @user.password = Digest::SHA1.hexdigest(@user.password)
    @user.name = @user.name.downcase
    user = User.where("name = '#{@user.name}' AND password = '#{@user.password}'")
    if user.empty?
      @user.error = ""
    else
      session[:user] = user
    end
  end
end
