module Crud
  require 'bcrypt'
puts "Module crud activated"
  users = [
            { username: "mashrur", password: "password1" },
            { username: "jack", password: "password2" },
            { username: "arya", password: "password3" },
            { username: "jonshow", password: "password4" },
            { username: "heisenberg", password: "password5" }
          ]
  
  def Crud.create_hash_digest(password)
    BCrypt::Password.create(password)
  end
  
  def Crud.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end
  
  def Crud.create_secure_users(list_of_users)
    list_of_users.each do |user_record| user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  create_secure_users(users)  # method call to create password hash

  def Crud.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username]==username && verify_hash_digest(user_record[:password])==password
        return user_record
      end
    end
    "credentials were not correct"
  end

  #p authenticate_user("heisenberg", "password5", users )

end

# in place of Crud. we can also use self.

   