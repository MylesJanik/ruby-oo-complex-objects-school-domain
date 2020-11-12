# code here!
require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
        @initialized_grades = []
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if !@initialized_grades.include?(grade)
            @roster[grade] = []
            @initialized_grades << grade
        end
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = @roster
        temp_name = "zzzzzzz"
        @roster.each do |a, b|
            sorted_roster[a] = b.sort
        end
        sorted_roster
    end

end