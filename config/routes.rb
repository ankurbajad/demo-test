Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'dashboard#index'
 get 'dashboard/check_process'

end
