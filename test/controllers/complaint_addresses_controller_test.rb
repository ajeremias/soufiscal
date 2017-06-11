require 'test_helper'

class ComplaintAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complaint_address = complaint_addresses(:one)
  end

  test "should get index" do
    get complaint_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_complaint_address_url
    assert_response :success
  end

  test "should create complaint_address" do
    assert_difference('ComplaintAddress.count') do
      post complaint_addresses_url, params: { complaint_address: { nome: @complaint_address.nome, state_id: @complaint_address.state_id } }
    end

    assert_redirected_to complaint_address_url(ComplaintAddress.last)
  end

  test "should show complaint_address" do
    get complaint_address_url(@complaint_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_complaint_address_url(@complaint_address)
    assert_response :success
  end

  test "should update complaint_address" do
    patch complaint_address_url(@complaint_address), params: { complaint_address: { nome: @complaint_address.nome, state_id: @complaint_address.state_id } }
    assert_redirected_to complaint_address_url(@complaint_address)
  end

  test "should destroy complaint_address" do
    assert_difference('ComplaintAddress.count', -1) do
      delete complaint_address_url(@complaint_address)
    end

    assert_redirected_to complaint_addresses_url
  end
end
