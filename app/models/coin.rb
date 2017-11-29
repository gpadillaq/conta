class Coin < ApplicationRecord
  CORDOBA = 1
  DOLAR = 2

  def display_name
    self.symbol
  end
end
