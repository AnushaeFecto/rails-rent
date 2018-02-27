class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @items = Item.first(3)
  end

  def create_rental
    @rental = Rental.new
    @user = current_user
    @rental.user = @user
    @rental.item = @item
    if @rental.save
      redirect_to rental_path(@rental)
    else
      render :new
    end
  end

end
