require "test_helper"

class Users::RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get users_registrations_edit_url
    assert_response :success
  end
end
