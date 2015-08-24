require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require('sinatra/activerecord')
require("./lib/player")
require("./lib/team")
require("pg")

get('/') do
  erb(:index)
end

get("/league") do
  erb(:league)
end
