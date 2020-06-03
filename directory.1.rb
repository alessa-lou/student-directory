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

def print(students)
  puts "Which cohort would you like to see?"
  cohort = gets.chomp.to_sym
  group = students.map { |student| student[:name] if student[:cohort] == cohort }
  puts group
end

def print_footer(students)
  if input_students == nil
    puts "Overall we have zero students"
  else
    puts "Overall we have #{students.count} great students "
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
students = []
name = gets.chomp
if name.empty?
  puts "Zero students"
else
  while !name.empty? do
    puts "Which cohort?"
    cohort = gets.chomp
      if cohort == ""
        cohort = "november"
      end
    puts "Did you do a typo? Type no for correct, type yes to redo"
    puts "name = #{name}, cohort = #{cohort}"
    typo = gets.chop
    if typo == "no"
      students << {name: name, cohort: cohort.to_sym}
      if students.count == 1
        puts "Now we have #{students.count} student"
      else
      puts "Now we have #{students.count} students"
      end
    end
  puts "Name:"
  name = gets.chop
  end
end
end

students = input_students
if students == nil
  puts "-"
end
print_header
print(students)
print_footer(students)
