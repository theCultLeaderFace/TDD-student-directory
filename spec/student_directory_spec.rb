require 'student_directory'

describe "student_directory" do

	# it "Proves that students is an array" do
		# expect(students.class).to eq Array
	# end	
	# context 'Prints Massages' do
			# it "Prints header" do	
				# expect(self).to receive(:puts).with("The students of Makers Academy\n----------------------\n")
				# print_header
			# end

			# it "Prints students_list" do
				# expect(self).to receive(:puts).with(@students)
				# students_list
			# end

			# it "Prints Footer with a students count" do
				# number_of_students = students.length
				# expect(self).to receive(:puts).with("Overall we have #{number_of_students} great students!")
				# print_footer
			# end
	# end
	

	context 'adding students to the list' do
		it 'we have no students in the begining' do
			expect(students_list.empty?).to be true
		end

		it "a student can be created" do
			name   = "Charlie"
			cohort = "June"
			expect(create_student_with(name, cohort)).to eq ({name: "Charlie", cohort: :June})
		end

		it 'there is one student in the list after adding one' do
			charlie = create_student_with("Charlie", "June")
			add_student(charlie)
			expect(students_list).to eq [{name: "Charlie", cohort: :June}]
		end
	end

	context 'saving students to a file' do 
		
	    end

end