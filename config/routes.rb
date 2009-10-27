ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'zero_nine', :action => 'entrada'
  map.connect '/video/*path', :controller => 'zero_nine', :action => 'video'
  map.aventuras '/aventuras', :controller => 'aventuras/cancion', :action => 'canciones'
  map.videos '/videos', :controller => 'zero_nine', :action => 'videos'
  map.comments '/comments', :controller => 'comments', :action => 'index'
  map.add_comment '/add_comment', :controller => 'comments', :action => 'create'
  map.connect 'aventuras/cancion/:action', :controller => 'aventuras/cancion'
  map.connect ':action', :controller => 'aventuras/cancion'
  
  #map.connect 'admin/:action', :controller => 'admin/contents'
#  map.connect ':action', :controller => 'web/main'
end
