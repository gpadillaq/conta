class BusinessPartner < ApplicationRecord
  validates :name, presence: true
  validates :id_number, presence: true

  belongs_to :business_partner_type
  belongs_to :coin

  def display_name
    self.name
  end
end
