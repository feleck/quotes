Rails.application.routes.draw do
  root 'citations#index'
  resource :citations, only: [:index, :new, :create]
end
