Rails.application.routes.draw do
  devise_for :users
 resources:travels
 root 'travels#index'

end
