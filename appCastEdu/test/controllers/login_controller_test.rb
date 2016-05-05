require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get makeLogin" do
    get :makeLogin
    assert_response :success
  end

end
