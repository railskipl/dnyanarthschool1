require 'test_helper'

class RailsControllerTest < ActionController::TestCase
  test "should get s" do
    get :s
    assert_response :success
  end

end
