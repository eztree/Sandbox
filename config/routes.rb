Rails.application.routes.draw do
  get 'messages/reply'
  root to: "pages#home"
  resources :pages
  resources :trips
  resource :messages do
    collection do
      post 'reply'
    end
  end
end
