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

  def edit
    @user = User.find(params[:id])
    redirect_to root_path if @user != current_user
    authorize @user

  end

  def update
    @user = current_user
    authorize @user

    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :address, :email, :photo)
  end
end
