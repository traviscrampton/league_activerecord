require('spec_helper')

describe(Player) do
  describe(".active_roster") do
    it("Will return array of players on the active roster") do
      test_team = Team.new({:name => 'Republican Primary'})
      test_player1 = test_team.players().new({:name => 'Marco Rubio', :active => true})
      test_player2 = test_team.players().new({:name => 'Ted Cruz', :active => false})
      test_team.save()
      expect(Player.active_roster()).to(eq([test_player1]))
    end
  end

  describe('#player') do
    it('tells you which team a player belongs to') do
      test_team = Team.create({:name => 'Republican Party'})
      test_player = Player.create({:name => 'Chris Christie', :team_id => test_team.id()})
      expect(test_player.team()).to(eq(test_team))
    end
  end
end
