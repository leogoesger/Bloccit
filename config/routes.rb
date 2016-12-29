Rails.application.routes.draw do

  resources :posts

  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'welcome/faq'
end
