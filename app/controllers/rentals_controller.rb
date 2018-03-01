class RentalsController < ApplicationController

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @item = Item.find(params[:item_id])
    @rental.item = @item
    skip_authorization
    if @rental.save
      redirect_to item_path(@item)
    else
      render 'items/show'
    end
  end


  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :address, :delivery_type)
  end

end
