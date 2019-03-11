class ApplicationController < ActionController::Base
    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    protect_from_forgery with: :exception
    
    private
        def user_not_authorized
            redirect_to (root_path)
        end
end
