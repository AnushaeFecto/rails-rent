class AddDeliveryOptionToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :rentals, :delivery_type, :string
  end
end
