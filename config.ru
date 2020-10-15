require 'rubygems'
require 'bundler/setup'
require 'json'

Bundler.require

Dir.glob('./lib/**/*.rb') { |f| require f }
require './pokedex_app.rb'

require 'securerandom'
set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

run PokedexApp
