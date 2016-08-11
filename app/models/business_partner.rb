class BusinessPartner < ApplicationRecord
  belongs_to :business_partner_type
  belongs_to :coin
end
