

class ZeroNineController < ApplicationController
  layout 'empty'

  VIDEOS = {
    :names => ['el-fin-del-mundo', 'la-plaga', 'la-jungla', 'tucuman', 'tucuman-exterior',
      'de-muerte', 'media-vida', 'el-dia-de-tu-boda'],
    :files => ['el fin del mundo b1.flv', 'la plaga b1.flv','3','4','5','6','7','8']
  }

  def entrada
    
  end

  def video
    path = params[:path].join;
    index = VIDEOS[:names].index(path)
    if index
      @video = VIDEOS[:files][index]
    else
      redirect_to videos_path
    end
  end
end