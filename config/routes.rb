Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :donation_forms, param: :donation_form_id
  root 'donation_forms#new'
end
