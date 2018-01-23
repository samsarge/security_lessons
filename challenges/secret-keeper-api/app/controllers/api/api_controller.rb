module Api
  class ApiController < ApplicationController
    respond_to :json
    before_action :authenticate_request!

    def authenticate_request!
      unless params[:authentication_token].present? && params[:authentication_token] = ENV['AUTHENTICATION_TOKEN']
        fix_message = <<-MSG
	  To authenticate with the API, provide your authentication token as request parameter `authentication_token`.
	MSG
        render json: { status: 'error', reason: 'Unauthenticated Request', fix: fix_message.strip }
      end
    end
  end
end
