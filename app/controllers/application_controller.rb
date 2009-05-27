# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'f7ce495ae95fa147282877da1956d07d'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password

    def authenticate_admin
    authenticate_or_request_with_http_basic('Pages::Admin') do |name, pass|
      name == 'lasbuenasnoches' && pass == 'hubicuscubicus'
    end
  end
  
  def add_comment
    if (params[:username].empty?)
      comment = Comment.new(params[:comment])
      comment.save
      WebMailer.deliver_comment_email(comment.content, comment.author)
    end
    redirect_to :back
  end

  def load_comments
    @comments = Comment.find(:all, :order => 'id DESC')
    @comment = Comment.new(:url => request.env['REQUEST_URI'])
  end
end
