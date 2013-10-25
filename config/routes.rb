Auth::Application.routes.draw do

 put 'groups' => 'groups#update'

 get 'dashboard' => 'dashboard#index'

 resources :users, :authentications, :groups



end
