require('spec_helper')

describe(Team) do
  describe('#players') do
    it('tells which players are on a team') do
      test_team = Team.create({:name => "team"})
      test_player1 = Player.create({:name => "Donald Trump", :team_id => test_team.id})
      test_player2 = Player.create({:name => "Jeb Bush", :team_id => test_team.id})
      expect(test_team.players()).to(eq([test_player1, test_player2]))
    end
  end
end
