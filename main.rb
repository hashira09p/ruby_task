require './person.rb'
people = [
  {
    national_id: 1,
    name: "Jerome",
    age: "24"
  },
  {
    national_id: 2,
    name: "Rosaline",
    age: "40"
  },
  {
    national_id: 3,
    name: "Arcadio",
    age: "50"
  },
  {
    national_id: 4,
    name: "Armea",
    age: "17"
  },
  {
    national_id: 5,
    name: "Mark",
    age: "22"
  },
  {
    national_id: 6,
    name: "Jericho",
    age: "21"
  },
  {
    national_id: 7,
    name: "Riza",
    age: "24"
  },
  {
    national_id: 8,
    name: "Rona",
    age: "24"
  },
  {
    national_id: 9,
    name: "Bryan",
    age: "24"
  },
  {
    national_id: 10,
    name: "Ruben",
    age: "54"
  },
  {
    national_id: 11,
    name: "Jarl",
    age: "24"
  },
  {
    national_id: 12,
    name: "Matt",
    age: "40"
  },
  {
    national_id: 13,
    name: "Jude",
    age: "50"
  },
  {
    national_id: 14,
    name: "Shan",
    age: "17"
  },
  {
    national_id: 15,
    name: "JV",
    age: "22"
  },
  {
    national_id: 16,
    name: "Jessy",
    age: "21"
  },
  {
    national_id: 17,
    name: "Jazz",
    age: "24"
  },
  {
    national_id: 18,
    name: "Rick",
    age: "24"
  },
  {
    national_id: 19,
    name: "Ted",
    age: "24"
  },
  {
    national_id: 20,
    name: "Jack",
    age: "54"
  },{
    national_id: 21,
    name: "Joshua",
    age: "22"
  },
  {
    national_id: 22,
    name: "Rio",
    age: "21"
  },
  {
    national_id: 23,
    name: "Jett",
    age: "24"
  },
  {
    national_id: 24,
    name: "Phoenix",
    age: "24"
  },
  {
    national_id: 25,
    name: "Helena",
    age: "24"
  },
  {
    national_id: 26,
    name: "Kathlene",
    age: "54"
  }
]

people.each do |element|
  person = Person.new
  person.name = element[:name]
  person.age = element[:age]
  person.id_number = element[:national_id]
  person.save
end

# ADD Function
def add
  puts "Please input an ID"
  person = Person.new
  person.id_number = gets.chomp.to_i
  #Checking if the id_input is already exist
  target_id = "Failed to add: National ID already exists." if Person.find_by_national_id(person.id_number)

  #If not Input a new id,name and age
  unless target_id

    puts "Please input your name"
    person.name = gets.chomp

    puts "Please input your age"
    person.age = gets.to_i

    person.save
  else
    puts target_id
  end
  person.last.each do |person|
    puts "Name: #{person.name}, Age: #{person.age}, National ID: #{person.id_number}"
  end
end

# DELETE  Function
def delete
  puts "Input an ID to delete: "
  id_input = gets.chomp.to_i

  found = Person.find_by_national_id(id_input)
  p "User not found." unless found

  if found
    Person.all.delete(found)
    p "Successfully Deleted"
    puts "Updated Data: "

    Person.show_all
  end
end


# Edit Function
def edit
  puts "Please input your ID to edit"
  person = Person.new
  person.id_number = gets.chomp.to_i

  found = Person.find_by_national_id(person.id_number)
  target = "Person not found" unless found

  if found
    puts "Please input a new name:"
    person.name = gets.chomp

    puts "Please input a new age:"
    person.age = gets.chomp.to_i
  elsif
    puts target
  end
  p person.update.details
end

#Search Function
def search
  puts "Please input your 1(name) or 2(id)"
  user_input = gets.chomp.to_i

  case user_input
  when 1
    puts "Please input your name"
    name = gets.chomp
    person = Person.find_by_name(name)
    found = "User not Found." unless person

    if person
      puts "Name: #{person.name}, Age: #{person.age}, National ID: #{person.id_number}"
    else
      puts found
    end

  when 2
    puts "Please input your id"
    id = gets.chomp.to_i
    person = Person.find_by_national_id(id)
    found = "User not Found." unless person

    if person
      puts "Name: #{person.name}, Age: #{person.age}, National ID: #{person.id_number}"
    else
      puts found
    end
  end
end

def delete_all
  person = Person.new
  person.destroy_all
end




continue = true
while continue
  puts "[1] ADD"
  puts "[2] DELETE"
  puts "[3] DELETE ALL"
  puts "[4] EDIT"
  puts "[5] SEARCH"

  chosen_action = gets.chomp.to_i

  case chosen_action
  when 1
    add
    p "Do You want to exit? Press Y/N."
    decision = gets.chomp.upcase
    system("Clear") || system("cls")
    continue = false if decision == "Y"
    system("Clear") || system("cls")
  when 2
    delete
    p "Do You want to exit? Press Y/N."
    decision = gets.chomp.upcase
    system("Clear") || system("cls")
    continue = false if decision == "Y"
    system("Clear") || system("cls")
  when 3
    delete_all
    p "Do You want to exit? Press Y/N."
    decision = gets.chomp.upcase
    system("Clear") || system("cls")
    continue = false if decision == "Y"
    system("Clear") || system("cls")
  when 4
    edit
    p "Do You want to exit? Press Y/N."
    decision = gets.chomp.upcase
    system("Clear") || system("cls")
    continue = false if decision == "Y"
    system("Clear") || system("cls")
  when 5
    search
    p "Do You want to exit? Press Y/N."
    decision = gets.chomp.upcase
    system("Clear") || system("cls")
    continue = false if decision == "Y"
    system("Clear") || system("cls")
  end

end






