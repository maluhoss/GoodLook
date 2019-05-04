Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'quiz', to: 'quizzes#new'
      resources :quizzes

      get 'result', to: 'results#show'
      resources :results

      get 'recommendations', to: 'outfits#show'
      resources :outfits

      get 'wardrobe', to: 'user_outfits#show'
      resources :user_outfits
    end
  end
end
