class Student

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  # def get_student_name()
  #   return @name
  # end
  #
  # def get_cohort_name()
  #     return @cohort
  # end

  # def change_student_name(name_update)
  #   @name = name_update
  # end
  #
  # def change_cohort(cohort_update)
  #   @cohort = cohort_update
  # end

  def talk()
    return "I can talk!"
  end

  def favorite_language(language)
    return "I love #{language}!"
  end

end
