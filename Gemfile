source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.4'

gem 'active_storage_validations'
gem 'bcrypt'
gem 'benchmark'
gem 'bigdecimal'
gem 'bootsnap', '1.16.0', require: false
gem 'bootstrap', '~> 5.3'
gem 'concurrent-ruby', '1.3.4'
gem 'dotenv'
gem 'drb'
gem 'faker'
gem 'image_processing'
gem 'importmap-rails', '1.1.5'
gem 'jbuilder', '2.11.5'
gem 'mutex_m'
gem 'ostruct'
gem 'puma', '5.6.8'
gem 'rails', '7.0.4.3'
gem 'sassc-rails', '2.1.2'
gem 'sprockets-rails', '3.4.2'
gem 'sqlite3', '1.6.1'
gem 'stimulus-rails', '1.2.1'
gem 'turbo-rails', '1.4.0'
gem 'will_paginate'
gem 'will_paginate-bootstrap-style'

group :development, :test do
  gem 'debug', '1.7.1', platforms: %i[mri mingw x64_mingw]
  gem 'reline', '0.5.10'
end

group :development do
  gem 'web-console',         '4.2.0'

  gem 'irb',                 '1.10.0'
  gem 'repl_type_completor'
  gem 'rubocop', require: false
  gem 'rubocop-rails', '~> 2.30.3', require: false
  gem 'ruby-lsp', require: false
end

group :test do
  gem 'capybara',                 '3.38.0'
  gem 'guard',                    '2.18.0'
  gem 'guard-minitest',           '2.4.6'
  gem 'minitest',                 '5.18.0'
  gem 'minitest-reporters',       '1.6.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'selenium-webdriver',       '4.8.3'
  gem 'webdrivers',               '5.2.0'
end

group :production do
  gem 'pg'
end

# Windows ではタイムゾーン情報用の tzinfo-data gem を含める必要があります
# gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
