# bank_account_spec.rb
require('minitest/autorun')
require('minitest/rg')
require_relative('../student_homework')

class TestStudent < MiniTest::Test

	def test_get_name
		student1 = Student.new("Terry", "E26")
		assert_equal("Terry", student1.get_name)
	end

	def test_get_cohort
		student1 = Student.new("Terry", "E26")
		assert_equal("E26", student1.get_cohort)
	end

	def test_set_name
		student1 = Student.new("Terry", "E26")
		student1.set_name("Erik")
		assert_equal("Erik", student1.get_name)
	end

	def test_set_cohort
		student1 = Student.new("Terry", "E26")
		student1.set_cohort("E25")
		assert_equal("E25", student1.get_cohort)
	end

	def test_talk
		student1 = Student.new("Terry", "E26")
		assert_equal("I can talk!", student1.talk)
	end

	def test_favourite_programme
		student1 = Student.new("Terry", "E26")
		assert_equal("I love Ruby", student1.say_favourite_language("Ruby"))
	end

end
