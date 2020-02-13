class ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page]).per(5)
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end

  def new
    @item = Item.new
  end


end
