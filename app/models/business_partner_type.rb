class BusinessPartnerType < ApplicationRecord

  def display_name
    self.description
  end
end
