class Coin < ApplicationRecord

  def display_name
    self.simbolo
  end
end
