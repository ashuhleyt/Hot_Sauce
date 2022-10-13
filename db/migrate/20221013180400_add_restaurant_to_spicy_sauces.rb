class AddRestaurantToSpicySauces < ActiveRecord::Migration[5.2]
  def change
    add_reference :spicy_sauces, :restaurant, foreign_key: true
  end
end
