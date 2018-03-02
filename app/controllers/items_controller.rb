class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items = policy_scope(Item).order(created_at: :desc)
    if params[:search].present?
      @items = Item.search(params[:search])
    end
  end

  def show
    @rental = Rental.new
    @item = Item.find(params[:id])
    authorize @item
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    authorize @item
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
    authorize @item
  end

  def update
    @item = Item.find(params[:id])
    authorize @item
    @item.update(item_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @item = Item.find(params[:id])
    authorize @item
    @item.destroy
    redirect_to user_path(current_user)
  end

  private

  def item_params
    params.require(:item).permit(:delivery_type, :size, :price, :category, :description, :photo, :photo_cache)
  end

end
