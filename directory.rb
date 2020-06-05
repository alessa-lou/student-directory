#First we print the list of students
students =  [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

@students = []

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
    puts "Overall we have #{@students.count} great students "
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
name = STDIN.gets.chomp
while !name.empty? do
    add_students(name, "november")
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
end
end

def load_students(filename = "students.csv")
  File.open(filename, "r") do |file|
    file.readlines.each do |line|
      name, cohort = line.chomp.split(',')
      add_students(name, cohort)
    end
  end
print_students_list
end

def add_students(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    puts "you have chosen 1. Input Students:"
    input_students
  when "2"
    puts "you have chosen 2. Show the students:"
    print_header
    print
    print_footer
  when "3"
    puts "you have chosen 3. Save the students to file:"
    save_students
  when "4"
    puts "you have chosen 4. Load the students from file"
    load_students
  when "9"
    puts "you have chosen 9. Exit"
    exit
  else
    puts "I don't know what you meant try again"
  end
end
    

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def save_students
  File.open("students.csv", "w") do |file|
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(",")
      file.puts csv_line
    end
  end
end

def default_startup_load
  filename = ARGV.first
  filename = "students.csv" if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

default_startup_load
interactive_menu

