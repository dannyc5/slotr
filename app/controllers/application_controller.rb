class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:after_sign_out_path_for]

  protected
    def after_sign_up_path_for(resource)
      interviews_path(resource)
    end

    def after_update_path_for(resource)
      interviews_path(resource)
    end
end
