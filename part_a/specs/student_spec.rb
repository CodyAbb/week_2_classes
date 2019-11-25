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

end
