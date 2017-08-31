Rails.application.routes.draw do
  devise_for :users
  get '/posts/new' => 'posts#new'
  get '/posts/create' => 'posts#create'
  
  root 'posts#index'
  get '/posts/show/:post_id' => 'posts#show'
  
  get '/posts/edit/:post_id' => 'posts#edit'
  get '/posts/update/:post_id' => 'posts#update'
  
  get '/posts/destroy/:post_id' => 'posts#destroy'
  
  post '/posts/show/:post_id/comments/create' => 'comments#create'
  post '/posts/show/:post_id/comments/destroy/:comment_id' => 'comments#destroy'
end
