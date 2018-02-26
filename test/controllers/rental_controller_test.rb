require 'test_helper'

class RentalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rental_index_url
    assert_response :success
  end

  test "should get show" do
    get rental_show_url
    assert_response :success
  end

  test "should get new" do
    get rental_new_url
    assert_response :success
  end

end
