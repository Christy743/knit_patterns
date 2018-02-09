class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    #if !current_user.admin? && current_user != @user
    #  redirect_to root_path, alert: "Access Denied"
    #end
  end

end
