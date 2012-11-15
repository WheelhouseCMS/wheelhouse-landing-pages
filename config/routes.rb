# Admin routes (scoped to /admin)
LandingPages::Plugin.routes.draw do  
  extend Wheelhouse::RouteExtensions
  
  resources :landing_pages, :controller => "admin/landing_pages"
end
