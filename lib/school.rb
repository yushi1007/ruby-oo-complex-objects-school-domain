class School
    attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
    #every time you add a student, you reinitialize your roster[grade] to [] which discards all of previous added students.
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end
    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end
    end

