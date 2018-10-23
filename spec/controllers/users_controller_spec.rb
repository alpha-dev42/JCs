require 'rails_helper'

describe UsersController, type: :controller do
    let(:user1) { User.create!(email: 'lainey@gmail.com', password: 'password123') }
    let(:user2) { User.create!(email: 'benthai@gmail.com', password: '123website') }

    describe 'GET #show' do
        context 'when user is logged in' do
            before do
                sign_in user2
            end

            it 'loads correct user details' do
                get :show, params: {id: user2.id }
                expect(response).to be_ok
                expect(assigns(:user)).to eq user2
            end   
        end

        context 'when a user is not logged in' do
            it 'redirects to login' do
                get :show, params: {id: user2.id }
                expect(response).to redirect_to(new_user_session_path)
            end
        end

    end
end