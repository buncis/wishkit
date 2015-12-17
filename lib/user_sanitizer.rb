class User::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:name, :username, :email, :password, :password_confirmation,
      :foto)
  end

  def account_update
    default_params.permit(:name, :username, :email, :password, :password_confirmation,
      :current_password, :foto)
  end
end
