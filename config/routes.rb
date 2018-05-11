Rails.application.routes.draw do
  root 'citations#index'
  resource :citations, only: [:new, :index]
end
