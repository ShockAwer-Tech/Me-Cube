class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    # TODO: remove once frontend is done
    skip_before_action :verify_authenticity_token
    def current_user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def logged_in?
        !!self.current_user
    end

    def log_in(user)
        @current_user = user
        session[:session_token] = user.reset_session_token
    end

    def logout!
        current_user.reset_session_token!
    end
end
