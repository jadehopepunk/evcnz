class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  private
  
    def admin_page?
      false
    end
    helper_method :admin_page?
end
