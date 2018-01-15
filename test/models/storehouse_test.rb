require 'test_helper'
class StorehouseTest < ActiveSupport::TestCase
  def setup
    @storehouse = storehouses(:storehouse)
  end

  test 'valid storehouse' do
    assert @storehouse.valid?
  end
end