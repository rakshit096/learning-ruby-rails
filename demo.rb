def dummyMethod
    puts "Hello world! Ruby is working."
    
end



 dummyMethod  # method call

firstName="Rakshit"
lastName="Saxena"

puts "my first name is #{firstName} and my last name is #{lastName}"   #String interpolation it only works with double quotes.

puts "What is your month of birth?"
month=gets.chomp

10/4=2  #--------------> because ruby treats it as integer so convert any one to float like..
10.0/4=2.5
10/4.to_f

puts "I am a line"
puts "-" *20      #prints dashes 20 times
20.times{print "-"} # prints 20 times


if true
    puts "Hello"
else
    puts "Bye"
end


# if condition && another_condition


# Hash or dictionary


	# myDetails={‘name’=>’Rakshit’, ‘surname’ => ‘Saxena’}

	# P myDetails[surname]
