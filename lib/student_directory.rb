require 'csv'

def students
	@students ||= [] 

end

def students_to_csv(student)
	student.values
end

def save(students)
	CSV.open('./students.csv', 'w') do |csv|
	csv << students_to_csv(@student)
end
end

def load_students
	CSV.foreach('./students.csv', 'r') do |row|
		hash = { name: row[0], cohort: row[1], hobby: row[2]}
		@students << hash
	end
end

def user_input
	gets.chomp				
end

def add_input_to_students
	students << user_input
end