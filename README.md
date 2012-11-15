Landing Pages Plugin for Wheelhouse CMS
=======================================

This gem provides support for landing page subdomains within a larger Wheelhouse CMS site.

Installation & Usage
--------------------

**1. Add `wheelhouse-landing-pages` to your Gemfile:**

    gem "wheelhouse-landing-pages", :github => "WheelhouseCMS/wheelhouse-landing-pages"

Then run `bundle install`.

**2. Create a new landing page from the New Page dropdown.**

Specify the subdomain using it's FQDN (Fully Qualified Domain Name), e.g. landing.example.com

**3. Configure your web server to route requests for the subdomain to the main app.**
