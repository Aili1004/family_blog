Rails.application.routes.draw do
  resources :photos
  root to: "family_members#index"
  resources :family_members
end
