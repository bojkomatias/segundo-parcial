class AdministratorsController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @users = @users.order(params[:by] + " " + params[:order]).page params[:page] if params[:sort] == "true"
    @users = User.order(:id).page params[:page]
    @users = @users.where(["first_name LIKE :search", :search => ("%" + params[:search] + "%")]) unless params[:search].blank?
  end

  def toggle_admin
    @user = User.where(id: params[:id]).first

    (@user.admin == (nil || false)) ? @user.admin = true : @user.admin = false
 
    @user.save
    redirect_to administrators_url
  end

end