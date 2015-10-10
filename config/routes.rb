Rails.application.routes.draw do

  root 'quotes#index'
  
  resources :quotes, except: :show do
    member do
      post 'vote'
    end
  end

end
