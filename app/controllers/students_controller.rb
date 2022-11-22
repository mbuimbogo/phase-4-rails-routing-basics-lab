class StudentsController < ApplicationController
 def index
    students = Student.all
    render json: students
 end
    def grades
        stud_grades = Student.all.order(grade: :desc)
        render json: stud_grades
    end

    def highest_grade
        render json: Student.all.order(grade: :desc).limit(1)[0]
    end
end
