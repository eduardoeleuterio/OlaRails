Helloword::Application.routes.draw do
  root to: 'hello#world'

  get '/hello/world'=>'hello#world'
  get '/pessoas/adultos' => 'pessoas#adultos'
  get '/pessoas/criancas' => 'pessoas#criancas'
  #get '/cidades/santa_catarina' => 'cidades#santa_catarina'
  #get '/cidades/parana' => 'cidades#parana'
  resources :cidades
  resources :estados
  resources :paises
  resources :bairros
  resources :ceps

  get '/estados' => 'estados#index'
end
  