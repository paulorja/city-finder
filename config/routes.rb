Rails.application.routes.draw do
  root 'cities#index'
  get 'cities/search'
end
