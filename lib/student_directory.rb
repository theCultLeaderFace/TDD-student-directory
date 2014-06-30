# def students
	# students = []
# end

def print_header
	puts "The students of Makers Academy\n----------------------\n"
end

def students_list
	@students ||= []
	
end

def print_footer
    number_of_students = students_list.length
	puts "Overall we have #{number_of_students} great students!"
end

def create_student_with(name, cohort)
	{name: name, cohort: cohort.to_sym}
end

def add_student(student)
	students_list << student
end