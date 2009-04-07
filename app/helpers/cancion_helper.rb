module CancionHelper
  def cancion_peq(name, action)
    link_to image_tag("aventuras/#{name}", :size => '176x189'), :controller => 'aventuras/cancion', :action => action
  end
end
