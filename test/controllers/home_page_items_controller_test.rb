require 'test_helper'

class HomePageItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_page_items_home_url
    assert_response :success
  end

end
