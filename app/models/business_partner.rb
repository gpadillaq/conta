class BusinessPartner < ApplicationRecord
  belongs_to :business_partner_type
  belongs_to :coin

  def display_name
    self.name
  end
end
