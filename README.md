# rails_console_exercises
Models, Validations and CRUD in Rails Console using Pry and Postgres.

##To Start

1. Fork and clone the readme or create your own readme where you will place your answers.
		Here we are - writing the answers! 

2. Create a new rails application (don't forget to cd into the directory)
		cd ruby_console 
		(not a terminal command) in gem file add a gem called: gem 'pry-rails'

3. Add pry-rails to your Gemfile and run bundle install
		(back in terminal) bundle

4. Make sure you have created your database
		Using Postgres:
		psql 
		CREATE DATABASE rails_console; 
		\q

		Using Rails: 
		rake db:create

5. Generate a model called Student, that has a first_name, last_name and age
		rails g model Student first_name:string last_name:string age:integer
	

6. Don't forget to run your migrations
		rake db:migrate

##Tasks to create

1. Using the new/save syntax, create a student with a first and last name and an age
		laura = Student.new(first_name:"laura", last_name:"kirby", age:28)
		sam = Student.new(first_name:"sam", last_name:"mon", age:8)

2. Save the student to the database
		laura.save

3. Using the find/set/save syntax update the student's first name to Myles
		laura.update(first_name:"Myles")

4. Delete the student (where first_name is Myles)
		 Student.find_by_first_name("Myles").destroy

5. In your model, validate that every Student's last name is unique

6. In your model, validate that every Student has a first and last name that is longer than 4 characters
		validates_length_of :first_name, minimum: 4
		QUESTION: validates_length_of :first_name, minimum: 4, message: "less than 30 if you don't mind"

7. Validate that every first and last name cannot be empty

8. Create a migration that adds a column with a type of string called favorite_color to the students table (don't forget to run rake db:migrate after and for this question write the command in terminal to generate this migration)
		rails g migration addFavoriteColorsToStudents fav_color:string

9. Using the create syntax create a student named John Doe who is 23 years old and has a favorite_color of purple
		stud  = Student.new(first_name:"john", last_name:"doe", age:23, fav_color:"purple")

10. Show if this new student entry is valid
		stud.save

11. Show the number of errors for this student instance

12. Using update, Change John Doe's name to Martin Fowler
		stud.update(first_name:"Martin", last_name:"Fowler")

13. Save Martin Fowler
		was saved with update method

14. Find all of the Students
		Students.all

15. Find the student with an ID of 128 and if it does not exist, make sure it returns nil and not an error
		Student.find_by_id(128)

16. Find the first student in the table
		Student.first

17. Find the last student in the table
		Student.last

18. Find the student with the last name of Fowler
		Student.find_by_last_name("Fowler")

19. Find all of students who have the first name of Martin and a favorite color of red
		Student.find_by_last_name_and_fav_color("Fowler", "purple")

20. Find all of the students and limit the search to 5 students, starting with the 2nd student and finally, order the students in alphabetical order

21. Delete Martin Fowler (but first look up who he is!)
		Student.destroy

22. Delete all of the students
		Student.destroy_all 

23. Bonus:
A. Use the validates_format_of and regex to only validate names that consist of letters (no numbers or symbols) and start with a capital letter
B. Write a custom validation to ensure that no one named Elie Schoppik, Colt Steele or Tim Garcia is included in the students table.