Rails.application.routes.draw do

  root'cocktails#index'

  resources :cocktails, except: [:destroy] do
    resources :doses, except: [:update, :edit]
  end
end
