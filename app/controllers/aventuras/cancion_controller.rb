class Aventuras::CancionController < ApplicationController
  before_filter :load_comments
  layout 'aventuras'


  after_filter {|c| c.cache_page}

  def entrada
    render :action => 'entrada', :layout => false
  end

end
