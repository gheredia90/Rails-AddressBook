Rails.application.routes.draw do
  root to: 'contacts#index'   
  post("/contacts", :to => "contacts#create")
  get "/contacts" => "contacts#index"
  resources :contacts
 
end


#  Prefix Verb   URI Pattern                  Controller#Action
#         root GET    /                            site#home
#     contacts GET    /contacts(.:format)          contacts#index
#              POST   /contacts(.:format)          contacts#create
#  new_contact GET    /contacts/new(.:format)      contacts#new
# edit_contact GET    /contacts/:id/edit(.:format) contacts#edit
#      contact GET    /contacts/:id(.:format)      contacts#show
#              PATCH  /contacts/:id(.:format)      contacts#update
#              PUT    /contacts/:id(.:format)      contacts#update
#              DELETE /contacts/:id(.:format)      contacts#destroy
