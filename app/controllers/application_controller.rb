class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
  	@users = User.all
  	# gon.users = @users
  	gon.rabl "app/views/users/index.json.rabl",  as: "users"
  end
end
