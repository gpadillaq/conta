class BusinessPartnerType < ApplicationRecord

  def display_name
    self.descripcion
  end
end
