module Admin
  class AdminController < InheritedResources::Base
    before_filter :authenticate
    
    private
    
      def admin_page?
        true
      end
    
      def authenticate
        authenticate_or_request_with_http_basic('Administration') do |username, password|
          username == 'admin' && password == 'bootlace'
        end
      end    
  end
end