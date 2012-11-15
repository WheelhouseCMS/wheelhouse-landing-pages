require 'wheelhouse'

module LandingPages
  class Plugin < Wheelhouse::Plugin
    isolate_namespace LandingPages
    resource { ::LandingPages::LandingPage }
    
    initializer :middleware do |app|
      require "landing_pages/dispatcher"
      app.middleware.use(LandingPages::Dispatcher)
    end
  end
end
