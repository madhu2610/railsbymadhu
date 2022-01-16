class PostManMailer < ApplicationMailer
    def welcome_student(student)
        @name = student.first_name + "  " + student.last_name
        mail(to: student.email, subject: 'Welcome to My Awesome Site')
    end

    def Mark_added(student_mark)
        @name = student_mark.student.first_name + "  " + student_mark.student.last_name
        @mark1 = student_mark.mark1 
        @mark2 = student_mark.mark2 
        @mark3 = student_mark.mark3 
        @total= student_mark.total 
        mail(to: student_mark.student.email, subject: 'ROR Test Result')
    end
end
