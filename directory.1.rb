#First we print the list of students
students =  [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: "murdering people"},
  {name: "Darth Vader", cohort: :november, hobbies: "murdering younglings"},
  {name: "Nurse Ratched", cohort: :november, hobbies: "murdering people"},
  {name: "Michael Corleone", cohort: :november, hobbies: "mafia stuff"},
  {name: "Alex DeLarge", cohort: :november, hobbies: "being weird"},
  {name: "The Wicked Witch of the West", cohort: :november, hobbies: "flying monkeys"},
  {name: "Terminator", cohort: :november, hobbies: "robotics"},
  {name: "Freddy Krueger", cohort: :november, hobbies: "dream creeping"},
  {name: "The Joker", cohort: :november, hobbies: "being sad inside"},
  {name: "Joffrey Baratheon", cohort: :november, hobbies: "torturing"},
  {name: "Norman Bates", cohort: :november, hobbies: "poisoning"}
]
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  counter = 0
  while counter != 11 do
  students.each do |student|
    puts "#{student[:name]} enjoys #{student[:hobbies]}"
    counter += 1
    end
  end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students "
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
students = []
name = gets.chomp
while !name.empty? do
    puts "Which cohort?"
    cohort = gets.chomp
      if cohort == ""
        cohort = "november"
      end
    puts "Did you do a typo? Type no for correct, type yes to redo"
    puts "name = #{name}, cohort = #{cohort}"
    typo = gets.chomp
    if typo == "no"
      students << {name: name, cohort: cohort.to_sym}
      puts "Now we have #{students.count} students"
    end
  puts "Name:"
  name = gets.chomp
end 
end

def group_cohorts
  

students = input_students
print_header
print(students)
print_footer(students)
