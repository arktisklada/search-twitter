class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = "FtDSXqfvLYhSOIH94kVGNg"
      config.consumer_secret = "CADaPQLTbDIVJau8RlUURESP1DaK50jvbSWt0VQvsA"
      config.access_token = session['access_token']
      config.access_token_secret = session['access_token_secret']
    end
  end
end
