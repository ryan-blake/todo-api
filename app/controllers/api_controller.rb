class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  private
  def authenticated?
    authenticate_or_request_with_http_basic {|full_name, password| User.where( full_name: full_name, password: password).present? }
  end
end
