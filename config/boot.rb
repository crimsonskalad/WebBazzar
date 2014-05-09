# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
$LOAD_PATH.unshift('../config/vendor/bundle/ruby/1.9.1/gems/sqlite3')
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
