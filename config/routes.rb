Rails.application.routes.draw do
  devise_for :users
  root "articles#index"

  resources :articles do 
    resources :comments
  end


  # Ruta para el perfil del usuario
  get "profile", to: "users#profile", as: :profile

  #ruta para enviar un email de prueba
  get "test/send_test_email", to: "test_mailer#send_test_email", as: :send_test_email

  #De esta manera los articulos están anidados a los comentarios 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  # Defines the root path route ("/")
  # root "posts#index"

  # puede sere debajo de get "test/send_test_email"
  get "test/notifications", to: "test_mailer#test_notifications", as: :test_notifications
  get "test/notification/:type", to: "test_mailer#test_single_notification", as: :test_single_notification
end
