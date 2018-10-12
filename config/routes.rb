Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :welcome, path: '', only: %i[index] do
    get :js_content, on: :collection
  end
end
