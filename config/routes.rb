Rails.application.routes.draw do
  root "calculators#index", defaults: { :format => 'json' }

  resources :calculators, defaults: { :format => 'json' }
end
