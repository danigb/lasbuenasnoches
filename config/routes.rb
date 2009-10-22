ActionController::Routing::Routes.draw do |map|
  map.resources :contents, :controller => 'admin/contents'

  map.root :controller => 'aventuras/cancion', :action => 'entrada'
  map.connect 'aventuras', :controller => 'aventuras/cancion', :action => 'canciones'
  map.connect 'aventuras/cancion/:action', :controller => 'aventuras/cancion'
  map.connect 'admin/:action', :controller => 'admin/contents'
  map.connect ':action', :controller => 'aventuras/cancion'
  map.connect 'nueva/:action', :controller => 'zero_nine'
  
#  map.connect ':action', :controller => 'web/main'
end
