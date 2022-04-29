# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/'
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
      expect(response.body).to include('Here is list of users')
    end

    it 'return show page' do
      get '/users/show'
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
      expect(response.body).to include('Here is info about user')
    end
  end
end
