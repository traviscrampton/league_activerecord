require('rspec')
require('pry')
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
    Team.all().each() do |team|
      team.destroy()
    end
  end
end
