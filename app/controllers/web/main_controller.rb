# To change this template, choose Tools | Templates
# and open the template in the editor.

class Web::MainController < ApplicationController
  layout 'blanco'
  before_filter :retrieve_contents


  def index
    redirect_to :action => 'inicio'
  end

  def inicio
  end

  def conciertos
    render :action => 'pagina'
  end
  
  def videos
    render :action => 'pagina'
  end
  
  def puntos_de_venta
    render :action => 'pagina'
  end

  def video
    if (params[:f].empty?)
      redirect_to :action => 'videos'
    else
      @video_file =params[:f].gsub(/_/, ' ')
      render :action => 'video'
    end
  end
  
  def contacto
    render :action => 'pagina'
  end

  private
  def retrieve_contents
    @content = Content.content_of(params[:action], 'contenido').body
    @message = Content.content_of(params[:action], 'arriba').body
  end
end
