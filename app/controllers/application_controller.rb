class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper

  before_action :authenticate_user!

  # layout :layout

  private

  def layout
    # only turn it off for login pages:
    is_a?(Devise::SessionsController) ? false : "application"
    # or turn layout off for every devise controller:
    devise_controller? && "application"
  end

  def after_sign_in_path_for(resource)
    case current_user.role
    when 'admin'
      users_path
    # when 'integrator'
    # when 'client'
    else
      root_path
    end
  end
end
