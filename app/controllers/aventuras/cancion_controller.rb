class Aventuras::CancionController < ApplicationController
  before_filter :load_comments
  layout 'aventuras'

  def entrada
    render :action => 'entrada', :layout => false
  end

end
