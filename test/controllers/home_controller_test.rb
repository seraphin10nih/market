require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success

    assert_select 'h2.card-title', Shirt.count
    assert_select 'h2.card-title', Shirt.first.title
    assert_select '.card-footer', /\d+,\d+ €/
  end

end
