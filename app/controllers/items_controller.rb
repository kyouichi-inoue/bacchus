class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :show, :destroy]
  before_action :move_to_index, except: [:index, :show]

  def index
    @items = Item.includes(:user).order("created_at DESC").page(params[:page]).per(5)
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end

  def new
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render :create
    else
      redirect_to new_item_path
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    if @item.update(item_params)
      render :update
    else
      redirect_to edit_item_path
    end
  end

  def show
  end

  private
  def item_params
    params.require(:item).permit(
                            :item,
                            :text,
                            :liquor_id,
                            :taste_id,
                            :place_id,
                            :alcohol_id,
                            images_attributes: [:id, :image]).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id]) 
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
