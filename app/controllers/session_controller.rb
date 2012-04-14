class SessionController < ApplicationController
  skip_before_filter :require_login, :only => [:create, :destroy]
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session.destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  def failure
    flash[:error] = "Sorry, but you didn't allow access to our app!"
    redirect_to root_url
  end
end
