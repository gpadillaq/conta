class Coin < ApplicationRecord

  def display_name
    self.symbol
  end
end
