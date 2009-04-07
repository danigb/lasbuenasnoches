class Aventuras::CancionController < ApplicationController
  before_filter :load_comments
  layout 'aventuras'

  def entrada
    render :action => 'entrada', :layout => false
  end

  def la_plaga
    @video = 'la plaga b1.flv'
    render :action => 'video', :layout => false
  end

  def el_fin_del_mundo
    @video = 'el fin del mundo b1.flv'
    render :action => 'video', :layout => false
  end

end
