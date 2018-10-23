require('minitest/autorun')
require('minitest/rg')
require_relative('../team_homework')

class TestStudent < MiniTest::Test

	def test_get_team_name
		team1 = Team.new("North Hampton Town", ["Alan", "Bob", "Chris"], "Dave")
		assert_equal("North Hampton Town", team1.team_name)
	end

	def test_get_player_names
		team1 = Team.new("North Hampton Town", ["Alan", "Bob", "Chris"], "Dave")
		assert_equal(["Alan", "Bob", "Chris"], team1.player_names)
	end

	def test_get_coach_name
		team1 = Team.new("North Hampton Town", ["Alan", "Bob", "Chris"], "Dave")
		assert_equal("Dave", team1.coach_name)
	end

	def test_set_coach_name
		team1 = Team.new("North Hampton Town", ["Alan", "Bob", "Chris"], "Dave")
		team1.coach_name = "Emily"
		assert_equal("Emily", team1.coach_name)
	end

	def test_add_player
		team1 = Team.new("North Hampton Town", ["Alan", "Bob", "Chris"], "Dave")
		team1.add_player("Freda")
		assert_equal(["Alan", "Bob", "Chris", "Freda"],team1.player_names)
	end

	def test_check_player
		team1 = Team.new("North Hampton Town", ["Alan", "Bob", "Chris"], "Dave")
		assert_equal(true,team1.check_player("Chris"))
		assert_equal(false,team1.check_player("Tommo"))
	end

	def test_has_points
		team1 = Team.new("North Hampton Town", ["Alan", "Bob", "Chris"], "Dave")
		assert_equal(0,team1.points)
	end

	def test_can_record_win
		team1 = Team.new("North Hampton Town", ["Alan", "Bob", "Chris"], "Dave")
		team1.add_result("win")
		assert_equal(3, team1.points)
	end

end
