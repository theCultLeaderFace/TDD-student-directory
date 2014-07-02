require 'student_directory'

describe "student_directory" do

	context 'Saving students to a file' do 

		it 'Formats the content of studnets list to comma-separated format' do

			@student = {name: 'Charlie', cohort: 'June'}
			expect(students_to_csv(@student)).to eq ['Charlie', 'June']
        	
		end

		it 'Save student to a file' do
			@student = {name: 'Charlie', cohort: 'June'}
			students = [@student]
			csv = double :csv
			expect(csv).to receive(:<<).with(students_to_csv(@student))
			expect(CSV).to receive(:open).with('./students.csv', 'wb').and_yield(csv)
			save(students)
		end
	end

	context 'Loading student list' do

		it 'converting csv back to HASH and loading it into student list' do
			row = ['Charlie', 'June']
			expect(CSV).to receive(:foreach).with('./students.csv', 'wb').and_yield(row)
			expect(@students).to receive(:<<).with(row)
			load_students

		end

	end

	context 'User input' do 
		
		it 'receives input from the user (name)' do
			name = "Charlie"
			expect(self).to receive(:gets).and_return(name)
			user_input
		end

		it 'does not include \n' do
			name = "Charlie\n"
			name_out = "Charlie"
			expect(self).to receive(:gets).and_return(name)
			expect(user_input).to eq "Charlie"
		end

		it 'include user input in the students list' do
			students << "Dave"
			student = "Dave"
			expect(@students).to eq([student])
		end
	end


end