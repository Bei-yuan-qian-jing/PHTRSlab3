require 'test_helper'

class PotholelistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @potholelist = potholelists(:one)
  end

  test "should get index" do
    get potholelists_url
    assert_response :success
  end

  test "should get new" do
    get new_potholelist_url
    assert_response :success
  end

  test "should create potholelist" do
    assert_difference('Potholelist.count') do
      post potholelists_url, params: { potholelist: { address: @potholelist.address, district: @potholelist.district, id: @potholelist.id, location: @potholelist.location, priority: @potholelist.priority, size: @potholelist.size } }
    end

    assert_redirected_to potholelist_url(Potholelist.last)
  end

  test "should show potholelist" do
    get potholelist_url(@potholelist)
    assert_response :success
  end

  test "should get edit" do
    get edit_potholelist_url(@potholelist)
    assert_response :success
  end

  test "should update potholelist" do
    patch potholelist_url(@potholelist), params: { potholelist: { address: @potholelist.address, district: @potholelist.district, id: @potholelist.id, location: @potholelist.location, priority: @potholelist.priority, size: @potholelist.size } }
    assert_redirected_to potholelist_url(@potholelist)
  end

  test "should destroy potholelist" do
    assert_difference('Potholelist.count', -1) do
      delete potholelist_url(@potholelist)
    end

    assert_redirected_to potholelists_url
  end
end
