require 'rails_helper'

describe TodosController, type: :controller do
    it 'redirects an anonimus user to log in' do
    get :index
    expect(response).to have_http_status(:redirect)
    expect(response).to redirect_to(new_user_session_path)
    end 

    it 'does not redirects an authenticated user' do
        user = User.create(email: 'test@test.cl', password: '12345678')
        sign_in user
        get :index
        expect(response).to have_http_status(:ok)
    end    

    it 'shows a todos' do
        user = User.create(email: 'test@test.cl', password: '12345678')
        task = Task.create(name: 'test', picture: 'test.jpg')
        todo = Todo.create(user: user, task: task)
        sign_in user
        get :show, params: {id: todo.id}
        expect(response).to have_http_status(:ok)
    end    
end        