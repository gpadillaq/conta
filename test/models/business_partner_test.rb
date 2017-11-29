require 'test_helper'
class BusinessPartnerTest < ActiveSupport::TestCase
  def setup
    @business_partner = business_partners(:cliente)
  end

  test 'valid business_partner' do
    assert @business_partner.valid?
  end

  test 'invalid without name' do
    @business_partner.name = nil
    refute @business_partner.valid?
    assert_equal(@business_partner.errors[:name], Array.new(1, I18n.t('errors.messages.blank')))
  end

  test 'invalid without id_number' do
    @business_partner.id_number = nil
    refute @business_partner.valid?
    assert_equal(@business_partner.errors[:id_number], Array.new(1, I18n.t('errors.messages.blank')))
  end

  test 'invalid without business_partner_type' do
    @business_partner.business_partner_type = nil
    refute @business_partner.valid?
    assert_equal(@business_partner.errors[:business_partner_type], Array.new(1, I18n.t('errors.messages.required')))
  end

  test 'invalid without coin' do
    @business_partner.coin = nil
    refute @business_partner.valid?
    assert_equal(@business_partner.errors[:coin], Array.new(1, I18n.t('errors.messages.required')))
  end

  test '#display_name' do
    assert_equal(@business_partner.display_name, 'Nombre Segudo Apellido')
  end
end
