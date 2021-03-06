class SessionsController < ApplicationController
  def create
    credentials = request.env['omniauth.auth']['credentials']
    session[:access_token] = credentials['token']
    session[:access_token_secret] = credentials['secret']
    redirect_to profile_path, notice: 'Signed in'
  end

  def show
    if session['access_token'] && session['access_token_secret']
      @user = cache_fetch :user do
        client.user include_entities: true
      end
    else
      redirect_to failure_path
    end
  end

  def error
    flash[:error] = 'Sign in with Twitter failed'
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'Signed out'
  end
end
