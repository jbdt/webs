# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  layout "devise"

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    current_user.update(
        sign_in_count: current_user.sign_in_count.succ,
        current_sign_in_at: Time.now,
        last_sign_in_at: current_user.current_sign_in_at,
        current_sign_in_ip: request.remote_ip,
        last_sign_in_ip: current_user.current_sign_in_ip
    ) if current_user
    super
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
