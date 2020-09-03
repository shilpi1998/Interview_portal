Rails.application.routes.draw do
  root 'interviews#new', as: 'interview_new'
  resources :participants
  resources :interviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
