IDPApp::Application.routes.draw do
  root to: "static_pages#process_data"
  post '/read_csv', to: 'static_pages#read_csv', as: 'read_csv'
end
