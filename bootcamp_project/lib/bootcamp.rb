class Bootcamp
   def initialize(name, slogan, student_capacity) 
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new {|h,k| h[k] = []}
    
   end 



 #getters
    def name
        @name
    end 
    def slogan
        @slogan
    end
    def teachers
        @teachers
    end 
    def students
        @students
    end 
    def hire(teacher)
        teachers.push(teacher)
    end 
    def enroll(student)
        if students.length < @student_capacity
            students.push(student)
            return true
        end 
        false
    end 
    def enrolled?(student)
        students.include?(student)
    end 

    def student_to_teacher_ratio
        students.length / teachers.length
    end
    def add_grade(student,grade)
        if students.include?(student)
            @grades[student] << grade
            return true
        
        else 
            false
        end 
    end 

    def num_grades(student)
        @grades[student].length
    end 

    def average_grade(student)
        if students.include?(student) && !@grades[student].empty?
       @grades[student].sum / @grades[student].length
        # elsif @grades[student].empty?
        #     return nil
        else 
            return nil
        end 
    end 



end