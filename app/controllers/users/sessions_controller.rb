class Users::SessionsController < Devise::SessionsController
    respond_to :json
    private
    def respond_with(_resource, _opts = {})
      render json: { message: 'Logged in.' }, status: :ok
    end
  
    
end