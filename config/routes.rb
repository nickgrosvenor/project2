Auth::Application.routes.draw do

 put 'groups' => 'groups#update'

 get 'dashboard' => 'dashboard#index'

 get 'signup' =>  'users#new'

 get 'dashboard' =>  'games#index'

 post 'games' => 'games#create'

 resources :users, :authentications, :groups, :games 



end
