require 'test_helper'

class InquiryTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inquiry_type = inquiry_types(:one)
  end

  test "should get index" do
    get inquiry_types_url
    assert_response :success
  end

  test "should get new" do
    get new_inquiry_type_url
    assert_response :success
  end

  test "should create inquiry_type" do
    assert_difference('InquiryType.count') do
      post inquiry_types_url, params: { inquiry_type: { name: @inquiry_type.name } }
    end

    assert_redirected_to inquiry_type_url(InquiryType.last)
  end

  test "should show inquiry_type" do
    get inquiry_type_url(@inquiry_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_inquiry_type_url(@inquiry_type)
    assert_response :success
  end

  test "should update inquiry_type" do
    patch inquiry_type_url(@inquiry_type), params: { inquiry_type: { name: @inquiry_type.name } }
    assert_redirected_to inquiry_type_url(@inquiry_type)
  end

  test "should destroy inquiry_type" do
    assert_difference('InquiryType.count', -1) do
      delete inquiry_type_url(@inquiry_type)
    end

    assert_redirected_to inquiry_types_url
  end
end
