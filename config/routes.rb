Rails.application.routes.draw do
  devise_for :users
  resources :synonyms do
    member do
      put "TRUE" => "synonyms#upvote"
      put "FALSE" => "synonyms#downvote"
    end
     resources :comments

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
