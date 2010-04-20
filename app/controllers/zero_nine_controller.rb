

class ZeroNineController < ApplicationController
  layout 'empty'

  VIDEOS = {
    :names => ['el-fin-del-mundo', 'la-plaga', 'la-jungla',
      'tucuman', 'tucuman-exterior',
      'de-muerte', 'media-vida', 'el-dia-de-tu-boda'],
    :files => ['el fin del mundo b1.flv', 'la plaga b1.flv','La jungla final.flv',
      'tucuman indoor.flv','Tucuman chil out final.flv',
      'De muerte.flv','Media vida tractor final b.flv','El dia de tu boda chill out final.flv']
  }


  after_filter {|c| c.cache_page}


  def entrada
  end

  def videos
  end

  def contacto
    
  end

  def video
    path = params[:path].join;
    index = VIDEOS[:names].index(path)
    if index
      @video = VIDEOS[:files][index]
      render :text => 'video no disponible' unless @video
    else
      redirect_to videos_path
    end
  end
end