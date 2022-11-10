Rails.application.routes.draw do
  get 'lists/new'
  post 'lists'=>'lists#create'
  get 'lists'=>'lists#index'
  #.../list/1や.../list/3に該当する
  get 'lists/:id'=>'lists#show', as: 'list'
  get 'lists/:id/edit'=>'lists#edit', as: 'edit_list'
  get 'top'=>'homes#top'
  patch 'lists/:id'=>'lists#update', as:'update_list'

  #get 'homes/top'=>'homes#top'と同じ意味
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
