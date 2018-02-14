
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :verify_authenticity_token

  def sign_in_with(provider_name)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
      set_flash_message(:notice, :success, :kind => provider_name) if is_navigational_format?
    else
      session["devise.twitter_data"] = request.env["omniauth.auth"]
    end
  end

  def twitter
    sign_in_with "Twitter"
  end

  def failure
    redirect_to root_path
  end

end
