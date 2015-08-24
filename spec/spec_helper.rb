require('rspec')
require('pg')
require('sinatra/activerecord')
require('player')
require('team')

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  config.after(:each) do
    Player.all().each() do |player|
      player.destroy()
    end
  end
end
