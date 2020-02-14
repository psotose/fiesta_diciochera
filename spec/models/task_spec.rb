require 'rails_helper'

RSpec.describe Task, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'has a picture' do
    task = Task.new
    expect(task).to respond_to(:picture)  
    expect(task).not_to respond_to(:banana)
  end 
  
  it 'has a name' do
    task = Task.new(name: 'Joder')
    expect(task).to respond_to(:name)
    expect(task.name).to eq('Joder')
  end
  
  it 'has a collection of todos' do
    task = Task.new
    expect(task).to respond_to(:todos)
    expect(task.todos).to respond_to(:[])
  end  

  it 'has one todo' do
    user = User.create(email: 'sbstn@yahoo.cl', password:'12345678')
    task = Task.create(name: 'test')
    todo = Todo.new(task: task, user: user)
    todo.save
    expect(task.todos.length)
  end  

  it 'valid with name and picture' do
    task = Task.new(name: 'test', picture:'dummy.jpg')
    invalid_task = Task.new
    expect(task).to be_valid
    expect(invalid_task).not_to be_valid
  end
end
