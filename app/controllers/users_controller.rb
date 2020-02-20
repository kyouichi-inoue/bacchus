class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @user = user.user
    @items = user.items.page(params[:page]).per(5).order("created_at DESC")
  end

end
