Gem::Specification.new do |s|
  s.name        = "wheelhouse-landing-pages"
  s.platform    = Gem::Platform::RUBY
  s.version     = "0.1"

  s.required_ruby_version     = ">= 1.8.7"
  s.required_rubygems_version = ">= 1.3.6"
  
  s.summary     = "Landing pages for Wheelhouse CMS"
  s.description = "Landing pages for Wheelhouse CMS"
  s.author      = "Sam Pohlenz"
  s.email       = "sam@wheelhousecms.com"
  s.homepage    = "https://www.wheelhousecms.com/"
  
  s.files        = Dir["{app,config,lib}/**/*"]
  s.require_path = "lib"
  
  s.add_dependency("wheelhouse", "~> 1.0")
end
