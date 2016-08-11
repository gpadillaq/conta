require 'test_helper'

class BusinessPartnerTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_partner_type = business_partner_types(:one)
  end

  test "should get index" do
    get business_partner_types_url
    assert_response :success
  end

  test "should get new" do
    get new_business_partner_type_url
    assert_response :success
  end

  test "should create business_partner_type" do
    assert_difference('BusinessPartnerType.count') do
      post business_partner_types_url, params: { business_partner_type: { descripcion: @business_partner_type.descripcion } }
    end

    assert_redirected_to business_partner_type_url(BusinessPartnerType.last)
  end

  test "should show business_partner_type" do
    get business_partner_type_url(@business_partner_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_partner_type_url(@business_partner_type)
    assert_response :success
  end

  test "should update business_partner_type" do
    patch business_partner_type_url(@business_partner_type), params: { business_partner_type: { descripcion: @business_partner_type.descripcion } }
    assert_redirected_to business_partner_type_url(@business_partner_type)
  end

  test "should destroy business_partner_type" do
    assert_difference('BusinessPartnerType.count', -1) do
      delete business_partner_type_url(@business_partner_type)
    end

    assert_redirected_to business_partner_types_url
  end
end
