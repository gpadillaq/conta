class StorehousesType < ApplicationRecord
  NINGUNO = 1
  VENTA = 2
  COMPRA = 3
  COMPRA_Y_VENTA = 4

  def display_name
    self.name
  end
end
