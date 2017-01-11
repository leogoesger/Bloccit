Rails.application.routes.draw do
	
  resources :topics do
     resources :posts, except: [:index]
     resources :sponsored_posts, except: [:index]
   end

  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'welcome/faq'
end
