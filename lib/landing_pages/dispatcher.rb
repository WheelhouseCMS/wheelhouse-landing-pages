module LandingPages
  class Dispatcher
    def initialize(app)
      @app = app
    end
    
    def call(env)
      result = @app.call(env)
      
      if result[1]['X-Cascade'] == 'pass'
        site = env['wheelhouse.site']
        
        if site && node = LandingPage.where(:site_id => site.id, :subdomain => env['SERVER_NAME']).first
          if env['PATH_INFO'] == '/'
            # Match requests to root of subdomain
            env['wheelhouse.subpath'] = '/'
            env['wheelhouse.node'] = node
            result = node.call(env)
          else
            # Ensure Wheelhouse dispatcher doesn't match pages within main site.
            # This is a bit a hack as we can't (currently) prevent the Wheelhouse dispatcher from handling a request.
            env['PATH_INFO'] = '/404'
          end
        end
      end
      
      result
    end
  end
end
