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
  }
]

p "Want to add or delete> please type Y/N"
input = gets.chomp.upcase
start = false

if input == "Y"
  start = true
end

while start
  p "Type Delete or Add"
  chosen_word = gets.chomp.upcase


  if chosen_word == "DELETE"
    p "Input the id you want to delete"
    deleting_id = gets.chomp.to_i
    id_exist = persons.any?{|element|element[:national_id] == deleting_id}

    persons.each_with_index do |element,index|
      if persons[index][:national_id] == deleting_id
        persons.delete_at(index)
        p "successfully deleted"
        puts persons
        break
      else
        p "user not found"
      end
    end
  elsif chosen_word == "ADD"

    p "Please input a new national id: "
    id = gets.chomp.to_i

    p "Please input your name: "
    name = gets.chomp

    p "Please input your age: "
    age = gets.chomp.to_i

    id_exist = persons.any?{|element|element[:national_id] == id}

    persons.each do |element|
      if  id_exist
        p "Failed To add: National ID already exist"
        break
      else
        persons.push({
                       national_id: id,
                       name: name,
                       age: age
                     })
        puts persons
        break
      end
    end
  end

  p "Do you want to continue? Please type Y/N"
  want_to_continue = gets.chomp.upcase

  if want_to_continue == "Y"
    start = true
  else
    start = false
  end
end


