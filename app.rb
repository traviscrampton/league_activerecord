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
  @teams = Team.all()
  erb(:league)
end

get('/teams') do

  erb(:teams)
end

post('/league') do
  team_name = params.fetch("team_name")
  coord_name = params.fetch("coord_name")
  team = Team.create({:name => team_name, :coord_name => coord_name})
  @teams = Team.all()
  erb(:league)
end
 patch('/league') do
   update_name = params.fetch('update_name')
   update_coord = params.fetch('update_coord')
   team_to_update = Team.find(params.fetch('teams').to_i())
   team_to_update.update({:name => update_name, :coord_name => update_coord})
   @teams = Team.all()
   erb(:league)
end
delete('/league') do
  team = Team.find(params.fetch('teams_delete').to_i())
  team.destroy()
  @teams = Team.all()
  erb(:league)
end
