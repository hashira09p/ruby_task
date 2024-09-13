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

p "input an id to search or name"
name_or_id = gets.chomp
status = "Users not Found"

persons.each.with_index do |element, index|
  if element[:name] == name_or_id || element[:national_id] == name_or_id.to_i
    status = element
    break
  else
    status = "User not Found"
  end
end

puts status