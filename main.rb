# Creating an array of people
persons = [
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

puts persons.first(20)

puts "[1] ADD"
puts "[2] DELETE"
puts "[3] EDIT"
puts "[4] SEARCH"

chosen_action = gets.chomp.to_i

# ADD Function
def add(data)
  puts "Please input an ID"
  id_input = gets.to_i

  #Checking if the id_input is already exist
  found = data.find { |element|  element[:national_id] == id_input}
  target_id = "Failed to add: National ID already exists." if data

  #If not Input a new id,name and age
  if !target_id

    puts "Please input your name"
    new_name = gets.chomp

    puts "Please input your age"
    new_age = gets.to_i

    data.push({
                national_id: id_input,
                name: new_name,
                age: new_age
              })

  else
    p target_id
  end

  puts data
end





