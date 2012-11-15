module LandingPages
  class LandingPage < Wheelhouse::Resource
    include Wheelhouse::Resource::Node
    include Wheelhouse::Resource::Renderable
    include Wheelhouse::Resource::Versioned
    include Wheelhouse::Resource::Content
    include Wheelhouse::Resource::Meta
    
    property :title, Translated[String], :required => true
    property :subdomain, String, :required => true
    
    activities :all
    
    icon "landing_pages/landing_page.png"
    
    self.default_template = "page"
    
    def template_class
      Wheelhouse::Page
    end
  end
end
