require 'test_helper'

class Admin::ManageEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_manage_events_index_url
    assert_response :success
  end

end
