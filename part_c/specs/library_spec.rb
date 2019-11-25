require('minitest/autorun')
require('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test

  def setup
    test_library = Library.new([ {
    title: "harry_potter",
    rental_details: {
     student_name: "Jill",
     date: "01/07/16"
    }
  }], [ {
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  }])

  end

  def test_get_book_title
    #This test does not work
  end

end
