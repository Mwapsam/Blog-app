# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/1/posts'
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
      expect(response.body).to include('Here is list of posts')
    end

    describe 'GET /show' do
      it 'returns show page' do
        get '/users/1/posts/1'
        expect(response).to have_http_status(:success)
        expect(response).to render_template(:show)
        expect(response.body).to include('Here is list of all posts for one user')
      end
    end
  end
end
