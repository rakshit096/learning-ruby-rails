require 'bcrypt'

# 1. Hashing a password to save in a database
password_hash = BCrypt::Password.create("mysecret123")
puts password_hash 
# 2. Verifying a password during login
my_password = BCrypt::Password.new(password_hash)
puts my_password
puts my_password == "mysecret123" # => true (Login successful)  operetor(==) is overloaded in BCrypt::Password class to compare the password with the hash
puts my_password == "wrongpass"   # => false (Login failed)