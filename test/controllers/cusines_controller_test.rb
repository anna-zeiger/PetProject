require 'test_helper'

class CusinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuisine = cusines(:one)
  end

  test "should get index" do
    get cusines_url
    assert_response :success
  end

  test "should get new" do
    get new_cusine_url
    assert_response :success
  end

  test "should create cusine" do
    assert_difference('Cusine.count') do
      post cusines_url, params: {cuisine: {name: @cuisine. name, reference: @cuisine.reference } }
    end

    assert_redirected_to cusine_url(Cuisine.last)
  end

  test "should show cusine" do
    get cusine_url(@cuisine)
    assert_response :success
  end

  test "should get edit" do
    get edit_cusine_url(@cuisine)
    assert_response :success
  end

  test "should update cusine" do
    patch cusine_url(@cuisine), params: {cuisine: {name: @cuisine. name, reference: @cuisine.reference } }
    assert_redirected_to cusine_url(@cusine)
  end

  test "should destroy cusine" do
    assert_difference('Cusine.count', -1) do
      delete cusine_url(@cuisine)
    end

    assert_redirected_to cusines_url
  end
end
