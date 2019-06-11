Rails.application.routes.draw do
  get 'files/index'
  get 'files/show'
  match 'files/destroy', via: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hello', to: 'hello#index'

  post '/click', to: 'hello#click'
  get '/click', to: 'hello#click_get'
end

