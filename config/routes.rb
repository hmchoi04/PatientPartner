Rails.application.routes.draw do
  resources :view_partners
  devise_for :others
  devise_for :users
  resources :conversations do 
    resources :messages 
  end
  get 'messages/index'
  get 'conversations/index'
  get 'partners/index'
  get 'patients/index'
  get 'conversations/index'
  get "patients/messages", to: "messages#index"
  get 'patients/view_partners', to: "view_partners#index"
  get '/messages', to: "messages#index"
  get '/conversations', to: "conversations#index"
  get '/partners', to: "partners#index"
  get '/patients', to: "patients#index"
  get '/homes', to:"homes#index"
  get 'homes/index'
  root to: "homes#index"
end
