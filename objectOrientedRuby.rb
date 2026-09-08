# class Student
#   @first_name
#   @last_name
#   @email
#   @password

#   def to_s    # classes have this method by default
#     "First name: #{@first_name}"
#   end

# end


# rakshit= Student.new # creation of object rakshit
# puts rakshit
# rakshit.first_name="Rakshit"
# puts rakshit

class Student
  def initialize(name, age)  # constructor in ruby. It is private method
    @name = name             # instance variable
    @age = age
  end

  def introduce             # instance method
    puts "Hi, I am #{@name} and I am #{@age} years old."
  end

  def study
    puts "#{@name} is studying Ruby."
  end
end

student1 = Student.new("Rakshit", 25)  # creates obj and also calls initialize method
student2 = Student.new("Rahul", 22)

student1.introduce
student1.study

student2.introduce
student2.study

# attr_reader
class Student
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
student = Student.new("Rakshit")

puts student.name

# attr_accessor
class Student
  attr_accessor :name, :age, :course

  def initialize(name, age, course)
    @name = name
    @age = age
    @course = course
  end
end



# learning code for attr and its types. It is alternative for getter and setter

class Employee
  attr_reader :age, :salary
  attr_accessor :name

  def initialize(name,age,salary)
    @name=name
    @age=age
    @salary=salary
  end
  def raise_salary(amount)
    @salary+=amount
  end 
end

employee= Employee.new('Rakshit', 22, 15000)

puts employee.name
puts employee.age
puts employee.salary
puts employee.raise_salary(10000)



#setter function
def first_name=(name)
  @first_name=name
end
#getter function
def first_name
  @first_name
end

rakshit.first_name ="Rakshit"
