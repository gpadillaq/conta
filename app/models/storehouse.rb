class Storehouse < ApplicationRecord
  validates :name, presence: true

  belongs_to :storehouses_type


  def display_name
    self.name
  end
end
