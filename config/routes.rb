Auth::Application.routes.draw do

 put 'groups' => 'groups#update'

 get 'dashboard' => 'dashboard#index'

 get 'signup' =>  'users#new'

 resources :users, :authentications, :groups



end
