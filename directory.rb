student_count = 11
#First we print the list of students
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates",
]
def print_header
  puts "The sutdents of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each {|student| puts student}
end

def print_footer
    puts "Overall we have #{students.count} great students "
end
print_header
print(students)
print_footer
