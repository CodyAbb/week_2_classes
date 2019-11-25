require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportTeam < MiniTest::Test

  def setup
    @test_team = SportsTeam.new('Edinburgh Edisons', ['John', 'Jacob', 'Jane', 'Julia'], 'Matteo', 0)
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

  def test_change_coach
    assert_equal("Alex", @test_team.coach = "Alex")
  end

  def test_add_player_to_team
    @test_team.add_player("James")
    assert_equal(5, @test_team.players.length)
  end

  def test_check_player_in_team
    assert_equal(true, @test_team.check_player_exists("Jacob"))
    assert_equal(false, @test_team.check_player_exists("Mark"))
  end

  def test_point_for_win
    @test_team.points_for_game("Win")
    assert_equal(3, @test_team.points)
  end

end
