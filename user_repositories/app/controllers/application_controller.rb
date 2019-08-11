class ApplicationController < ActionController::Base
  protect_from_forgery
  def request_validation
    unless params[:access_token]
      render status: 412, json: {message: 'parameters missing'}
      return
    end
  end
end
