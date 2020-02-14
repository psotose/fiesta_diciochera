require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "An empty todo is not valid" do
    @todo = Todo.new
    assert_not @todo.valid?
  end
  
  test "A todo with user and task is valid" do
  dummy_user = users(:one)
  dummy_task = tasks(:one)
  @todo = Todo.new(user: dummy_user, task: dummy_task)
  assert @todo.valid?
  end
end
