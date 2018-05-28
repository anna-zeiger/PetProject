require 'test_helper'

class CusinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cusine = cusines(:one)
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
      post cusines_url, params: { cusine: {  name: @cusine. name, reference: @cusine.reference } }
    end

    assert_redirected_to cusine_url(Cusine.last)
  end

  test "should show cusine" do
    get cusine_url(@cusine)
    assert_response :success
  end

  test "should get edit" do
    get edit_cusine_url(@cusine)
    assert_response :success
  end

  test "should update cusine" do
    patch cusine_url(@cusine), params: { cusine: {  name: @cusine. name, reference: @cusine.reference } }
    assert_redirected_to cusine_url(@cusine)
  end

  test "should destroy cusine" do
    assert_difference('Cusine.count', -1) do
      delete cusine_url(@cusine)
    end

    assert_redirected_to cusines_url
  end
end
