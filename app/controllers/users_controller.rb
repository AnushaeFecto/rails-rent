class UsersController < ApplicationController
  def show
    @user = current_user
    @my_items = current_user.items
    @my_rentals = current_user.rentals
    @rental_requests = []
    Rental.all.each do |rental|
      @rental_requests << rental if @my_items.include?(rental.item)
    end

    authorize @user
  end
end
