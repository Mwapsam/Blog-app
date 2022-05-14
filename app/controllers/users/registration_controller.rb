class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json
    private
    def respond_with(resource, _opts = {})
      resource.persisted? ? register_success : register_failed
    end
    
end