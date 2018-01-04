require 'test_helper'

class DamagereportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @damagereport = damagereports(:one)
  end

  test "should get index" do
    get damagereports_url
    assert_response :success
  end

  test "should get new" do
    get new_damagereport_url
    assert_response :success
  end

  test "should create damagereport" do
    assert_difference('Damagereport.count') do
      post damagereports_url, params: { damagereport: { address: @damagereport.address, cost: @damagereport.cost, name: @damagereport.name, tel: @damagereport.tel, type: @damagereport.type } }
    end

    assert_redirected_to damagereport_url(Damagereport.last)
  end

  test "should show damagereport" do
    get damagereport_url(@damagereport)
    assert_response :success
  end

  test "should get edit" do
    get edit_damagereport_url(@damagereport)
    assert_response :success
  end

  test "should update damagereport" do
    patch damagereport_url(@damagereport), params: { damagereport: { address: @damagereport.address, cost: @damagereport.cost, name: @damagereport.name, tel: @damagereport.tel, type: @damagereport.type } }
    assert_redirected_to damagereport_url(@damagereport)
  end

  test "should destroy damagereport" do
    assert_difference('Damagereport.count', -1) do
      delete damagereport_url(@damagereport)
    end

    assert_redirected_to damagereports_url
  end
end
