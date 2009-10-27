# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details Uncomment the
  # :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'f7ce495ae95fa147282877da1956d07d'
  
  # See ActionController::Base for details Uncomment this to filter the contents
  # of submitted sensitive data parameters from your application log (in this
  # case, all fields with names like "password"). filter_parameter_logging
  # :password

  helper_method :current_path

  def authenticate_admin
    authenticate_or_request_with_http_basic('Pages::Admin') do |name, pass|
      name == 'lasbuenasnoches' && pass == 'hubicuscubicus'
    end
  end

  def current_path
    request.env['PATH_INFO']
  end

end
