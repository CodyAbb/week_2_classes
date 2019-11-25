require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportTeam < MiniTest::Test

  def setup
    @test_team = SportsTeam.new('Edinburgh Edisons', ['John', 'Jacob', 'Jane', 'Julia'], 'Matteo')
  end

  def test_get_team_name
    assert_equal('Edinburgh Edisons', @test_team.team_name)
  end

  def test_get_players
    assert_equal(['John', 'Jacob', 'Jane', 'Julia'], @test_team.players)
  end

  def test_get_coach
    assert_equal('Matteo', @test_team.coach)
  end
end
