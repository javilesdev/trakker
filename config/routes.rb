Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope "(:locale)", locale: /es-CL|es/ do
    root 'dashboard#index'
  end
end
