Arnl::Application.routes.draw do
  root :to => 'visitors#new'
  get '/search' => 'cars#index'
end
