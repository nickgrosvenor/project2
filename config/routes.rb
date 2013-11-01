Auth::Application.routes.draw do

 put 'groups' => 'groups#update'


 get 'signup' =>  'users#new'

 get 'dashboard' =>  'users#show'

 post 'games' => 'games#create'
 

 resources :users, :authentications, :groups, :games, :submissions



end
