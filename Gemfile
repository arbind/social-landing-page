source 'https://rubygems.org'

ruby "2.0.0"
gem 'rails'         , '~>4.0.0'
gem 'thin'          , group: :production

group :production do
  gem 'rails_12factor'
  gem 'rails_log_stdout'          , github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end

gem 'mongoid'       , github: 'mongoid/mongoid'
gem 'eventmachine'

gem 'newrelic_rpm'
gem 'omniauth-twitter'  , '~>1.0.0'
gem 'font-awesome-sass-rails'

gem 'sass-rails'    , '~> 4.0.0'
gem 'haml-rails'    , '~> 0.4'
gem 'coffee-rails'  , '~> 4.0.0'
gem 'uglifier'      , '>= 1.3.0'

gem 'jquery-rails'

gem 'rspec-rails'     , group: [:development, :test]
gem 'database_cleaner', group: :test
gem 'factory_girl'    , group: :test
