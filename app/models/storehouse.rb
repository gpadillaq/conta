class Storehouse < ApplicationRecord
  belongs_to :storehouses_type

  def display_name
    self.description
  end
end
