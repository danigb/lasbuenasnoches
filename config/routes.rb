ActionController::Routing::Routes.draw do |map|
  map.resources :contents, :controller => 'admin/contents'

  map.root :controller => 'zero_nine', :action => 'entrada'
  map.connect '/video/*path', :controller => 'zero_nine', :action => 'video'
  map.aventuras '/aventuras', :controller => 'aventuras/cancion', :action => 'canciones'
  map.videos '/videos', :controller => 'zero_nine', :action => 'videos'
  map.connect 'aventuras/cancion/:action', :controller => 'aventuras/cancion'
  map.connect 'admin/:action', :controller => 'admin/contents'
  map.connect ':action', :controller => 'aventuras/cancion'
  map.connect 'nueva/:action', :controller => 'zero_nine'
  
#  map.connect ':action', :controller => 'web/main'
end
