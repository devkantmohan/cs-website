# CloudSpokes (on Rails!)

This application is not a pixel-for-pixel or same-HTML remake of
Cloudspokes. This was an intentional decision as it has been built with
the same look and feel but using semantic HTML5 as well as Sprockets,
SASS, and CSS3.

The application is on a clean skeleton and is set up for RSpec testing.
To run the application, you can simply run `rails server`. It is also
complete with a Gemfile, Guardfile for test automation, and more.

Basically this is a shell application that gives you everything you need
to get up and running. It should deploy to Heroku great as-is.

## Pages

The pages that are available are:

1. Home Page (dynamic content excluded)
2. About Page ("how it works" link)
3. FAQs
4. Privacy Policy
5. Terms of Service

The required omniauth strategies have been added in config/initializers/omniauth.rb
with the required consumer keys and consumer secrets from various OAuth providers.
Change these values during deployment. Also there is a hard coded value of
'OmniAuth.config.full_host' to a 'https' url of the app. This is to force the
callback generated by omniauth to have a 'https' (required for Salesforce).

Our OAuth module is at lib/auth.rb. It consumes the omniauth hash and generates
a uniform hash for all providers with necessary values in a instance variable
'authhash' which can be used by other modules/classes.

The rails app has single controller: SessionController which has endpoints for
/auth/<provider>/callback and passes on the omniauth hash and provider to our
'lib/auth' module.

The current homepage with links to various providers is a simple static file:
'public/index.html'.

May want to look into implementing the session store with Redis: https://github.com/mattmatt/redis-session-store