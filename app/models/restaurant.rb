class Restaurant < ApplicationRecord
  has_many :spicy_sauces

  def spicy_sauce_count
    self.spicy_sauces.count
  end
end

