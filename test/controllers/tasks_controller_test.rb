require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    skip
    get tasks_index_url
    assert_response :success
  end

end
