Rails.application.routes.draw do

  root to: 'main#index'

  get 'road', to: 'road#index'
  get 'rail', to: 'rail#index'
  get 'bus', to: 'bus#index'
  get 'tube', to: 'tube#index'

end
