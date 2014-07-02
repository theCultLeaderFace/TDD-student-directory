require 'CSV'

def students
	@students = []
end

def students_to_csv(student)
	student.values
end

def save(students)
	CSV.open('./students.csv', 'wb') do |csv|
	csv << students_to_csv(@student)
end
end

def load_students
	CSV.foreach('./students.csv', 'wb') do |row|
		@students << row
	end
end

def user_input
	gets.chomp				
end