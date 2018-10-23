class Team
	attr_reader :team_name, :player_names, :points
	attr_accessor :coach_name

	def initialize(team_name, player_names, coach_name)
		@team_name = team_name
		@player_names = player_names
		@coach_name = coach_name
		@points = 0
	end

	def add_player(new_player)
		@player_names.push(new_player)
	end

	def check_player(player)
		return true if @player_names.include?(player)
		return false
	end

	def add_result(result)
		result_hash = {
			"win" => 3,
			"draw" => 1,
			"lose" => 0
		}
		@points += result_hash[result]
	end
	 

	# def get_team_name
	# 	return @team_name
	# end
	#
	# def get_player_names
	# 	return @player_names
	# end
	#
	# def get_coach_name
	# 	return @coach_name
	# end
	#
	# def set_coach_name(new_name)
	# 	@coach_name = new_name
	# end


end
