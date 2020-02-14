require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    skip
    get todos_index_url
    assert_response :success
  end

  test "should get show" do
    skip
    get todos_show_url
    assert_response :success
  end

end
