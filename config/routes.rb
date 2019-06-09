Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :recipes
    end
  end
  namespace 'admin' do
    resources :recipes
  end
end