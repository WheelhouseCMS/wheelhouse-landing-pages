class LandingPages::Admin::LandingPagesController < Wheelhouse::ResourceController
  self.resource_class = LandingPages::LandingPage
  manage_site_breadcrumb
end
