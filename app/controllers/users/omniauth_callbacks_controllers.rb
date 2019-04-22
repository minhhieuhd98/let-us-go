class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def google_oauth2
        @user = User.from_omniauth(request.env["omniauth.auth"])
        if @user.nil?
            flash[:notice] = 'có lỗi'
        else
            flash[:notice] = 'login thành công'
        end
        redirect_to root_path
    end
end
