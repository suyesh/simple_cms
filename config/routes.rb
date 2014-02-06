SimpleCms::Application.routes.draw do
  
  match ':controller(/:action(/:id))', :via => [:get, :post]
end
