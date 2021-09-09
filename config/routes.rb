Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  resources :orders do
  end
  resources :materials do
    get :make_pair, on: :member
    get :ship_pair, on: :member
    get :buy_thick_elastic, on: :member
    get :buy_thin_elastic, on: :member
    get :buy_mailers, on: :member
  end
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
