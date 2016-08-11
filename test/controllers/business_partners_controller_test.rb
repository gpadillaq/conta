require 'test_helper'

class BusinessPartnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_partner = business_partners(:one)
  end

  test "should get index" do
    get business_partners_url
    assert_response :success
  end

  test "should get new" do
    get new_business_partner_url
    assert_response :success
  end

  test "should create business_partner" do
    assert_difference('BusinessPartner.count') do
      post business_partners_url, params: { business_partner: { activo: @business_partner.activo, business_partner_type: @business_partner.business_partner_type, celular: @business_partner.celular, coin: @business_partner.coin, direccion: @business_partner.direccion, email: @business_partner.email, identificador: @business_partner.identificador, primer_apellido: @business_partner.primer_apellido, primer_nombre: @business_partner.primer_nombre, segundo_apellido: @business_partner.segundo_apellido, segundo_nombre: @business_partner.segundo_nombre, telefono: @business_partner.telefono } }
    end

    assert_redirected_to business_partner_url(BusinessPartner.last)
  end

  test "should show business_partner" do
    get business_partner_url(@business_partner)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_partner_url(@business_partner)
    assert_response :success
  end

  test "should update business_partner" do
    patch business_partner_url(@business_partner), params: { business_partner: { activo: @business_partner.activo, business_partner_type: @business_partner.business_partner_type, celular: @business_partner.celular, coin: @business_partner.coin, direccion: @business_partner.direccion, email: @business_partner.email, identificador: @business_partner.identificador, primer_apellido: @business_partner.primer_apellido, primer_nombre: @business_partner.primer_nombre, segundo_apellido: @business_partner.segundo_apellido, segundo_nombre: @business_partner.segundo_nombre, telefono: @business_partner.telefono } }
    assert_redirected_to business_partner_url(@business_partner)
  end

  test "should destroy business_partner" do
    assert_difference('BusinessPartner.count', -1) do
      delete business_partner_url(@business_partner)
    end

    assert_redirected_to business_partners_url
  end
end
