class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  after_action :allow_algolia_iframe

  private

  def allow_algolia_iframe
    response.headers.delete('X-Frame-Options')
  end
end
