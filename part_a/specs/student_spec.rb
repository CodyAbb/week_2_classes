require('minitest/autorun')
require('minitest/reporters')
require_relative('../student.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

  def setup
    @test_student = Student.new("Cody", "E36")
  end

  def test_check_student
    assert_equal("Cody", @test_student.name)
  end

  def test_check_cohort
    assert_equal("E36", @test_student.cohort)
  end

  def test_student_name_update
    # @test_student.change_student_name("Codette")
    # assert_equal("Codette", @test_student.name)
    assert_equal("Codette", @test_student.name = "Codette")
  end

  def test_student_cohort_update
    # @test_student.change_cohort("E37")
    # assert_equal("E37", @test_student.cohort)
    assert_equal("E37", @test_student.cohort = "E37")
  end

  def test_talk_ability
    assert_equal("I can talk!", @test_student.talk)
  end

  def test_favorite_language
    assert_equal("I love Ruby!", @test_student.favorite_language("Ruby"))
  end

end
