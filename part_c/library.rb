class Library

  attr_reader :title
  attr_accessor :rental_details

  def initialize(title, rental_details)
    @title = title
    @rental_details = rental_details
  end

  def list_books()
    for title in @titles
      return title
    end
  end


end
