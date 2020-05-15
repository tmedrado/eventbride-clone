require 'test_helper'

class Admin::ManageUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_manage_users_index_url
    assert_response :success
  end

end
