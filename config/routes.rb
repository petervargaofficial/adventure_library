AdventureLibrary::Application.routes.draw do
  root 'adventures#index'
  post '/scrape_request', to: 'adventures#scrape_request'
  get '/adventures', to: 'adventures#adventures'
  get '/libraries', to: 'adventures#libraries'

  resources :adventures do
    resources :pages
  end
end

# Peters-MacBook-Pro:adventure_library petervarga$ rake routes
#              Prefix Verb   URI Pattern                                        Controller#Action
#     adventure_pages GET    /adventures/:adventure_id/pages(.:format)          pages#index
#                     POST   /adventures/:adventure_id/pages(.:format)          pages#create
#  new_adventure_page GET    /adventures/:adventure_id/pages/new(.:format)      pages#new
# edit_adventure_page GET    /adventures/:adventure_id/pages/:id/edit(.:format) pages#edit
#      adventure_page GET    /adventures/:adventure_id/pages/:id(.:format)      pages#show
#                     PATCH  /adventures/:adventure_id/pages/:id(.:format)      pages#update
#                     PUT    /adventures/:adventure_id/pages/:id(.:format)      pages#update
#                     DELETE /adventures/:adventure_id/pages/:id(.:format)      pages#destroy
#          adventures GET    /adventures(.:format)                              adventures#index
#                     POST   /adventures(.:format)                              adventures#create
#       new_adventure GET    /adventures/new(.:format)                          adventures#new
#      edit_adventure GET    /adventures/:id/edit(.:format)                     adventures#edit
#           adventure GET    /adventures/:id(.:format)                          adventures#show
#                     PATCH  /adventures/:id(.:format)                          adventures#update
#                     PUT    /adventures/:id(.:format)                          adventures#update
#                     DELETE /adventures/:id(.:format)                          adventures#destroy
