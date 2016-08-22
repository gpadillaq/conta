class Bill < ApplicationRecord
  belongs_to :business_partner
  belongs_to :coin
  belongs_to :bill_type
  belongs_to :payment_type
end
