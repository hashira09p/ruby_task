class Person
  attr_accessor :name, :age, :id_number

  @@records = [ ]
  def save
    @@records.append(self)
  end

  def self.all
    @@records
  end
  def self.first
    return @@records.first(5)
  end

  def self.last
    return @@records.last
  end

  def self.show_all
    @@records.each do |record|
      p "Name: #{record.name}, Age: #{record.age}, National_ID: #{record.id_number}"
    end
  end

  def self.find_by_national_id(id_input)
    @@records.find{|element| element.id_number == id_input}
  end

  def update
    data = Person.find_by_national_id(id_number)
    data.name = name
    data.age = age
    data
  end

  def self.find_by_name(name)
    @@records.find{|element| element.name == name}
  end
  def details
    "Name: #{name}, Age: #{age}, National_ID: #{id_number}"
  end
end



# =begin
# puts f_person.details=end
