require "test_helper"

class ViewPartnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @view_partner = view_partners(:one)
  end

  test "should get index" do
    get view_partners_url
    assert_response :success
  end

  test "should get new" do
    get new_view_partner_url
    assert_response :success
  end

  test "should create view_partner" do
    assert_difference('ViewPartner.count') do
      post view_partners_url, params: { view_partner: { first_name: @view_partner.first_name, last_name: @view_partner.last_name, string,: @view_partner.string, } }
    end

    assert_redirected_to view_partner_url(ViewPartner.last)
  end

  test "should show view_partner" do
    get view_partner_url(@view_partner)
    assert_response :success
  end

  test "should get edit" do
    get edit_view_partner_url(@view_partner)
    assert_response :success
  end

  test "should update view_partner" do
    patch view_partner_url(@view_partner), params: { view_partner: { first_name: @view_partner.first_name, last_name: @view_partner.last_name, string,: @view_partner.string, } }
    assert_redirected_to view_partner_url(@view_partner)
  end

  test "should destroy view_partner" do
    assert_difference('ViewPartner.count', -1) do
      delete view_partner_url(@view_partner)
    end

    assert_redirected_to view_partners_url
  end
end
