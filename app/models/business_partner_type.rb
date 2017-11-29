class BusinessPartnerType < ApplicationRecord
  CLIENTE = 1
  PROVEEDOR = 2

  def display_name
    self.description
  end
end
