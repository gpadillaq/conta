class CreditApplication < ApplicationRecord
  belongs_to :business_partner
  belongs_to :credit_type
  belongs_to :payment_frequency
  belongs_to :coin
  belongs_to :statu
end
