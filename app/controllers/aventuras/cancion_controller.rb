class Aventuras::CancionController < ApplicationController
  layout 'aventuras'


  after_filter {|c| c.cache_page}

  def entrada
    render :action => 'entrada', :layout => false
  end

end
