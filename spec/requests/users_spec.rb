class UsersController < ApplicationController
  def index
    params.permit(:title, :body)
  end
end

RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    subject { get :index }

    it { should have_http_status(:success) }
    it { should permit(:title, :body).for(:index, verb: :get) }
  end
end
