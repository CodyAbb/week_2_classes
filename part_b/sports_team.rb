class SportsTeam

  attr_accessor :coach, :players, :points
  attr_reader :team_name

  def initialize (team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end

  def add_player(player_name)
    @players << player_name
  end

  def check_player_exists(player_name)
    for player in @players
      if player == player_name
        return true
      end
    end
    return false
  end

  def points_for_game(game_results)
    if game_results == "Win"
      @points += 3
    end
  end

end
