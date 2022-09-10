users = [
  { username: "paula", password: "aluap" },
  { username: "manuela", password: "987654" },
  { username: "nilsen", password: "babalu" },
  { username: "fernanda", password: "123456" },
  { username: "marilia", password: "amora" }
]

attempts = 1

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Incorrect credentials. Please try again =/"
end

puts "Welcome to the Authenticator"
25.times { print "=" }
puts

while attempts < 4
  puts "username: "
  username = gets.chomp.downcase
  puts "password: "
  password = gets.chomp.downcase

  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press q to quit or any other key to continue: "
  input = gets.chomp.downcase

  break if input == "n"
  attempts += 1
end

puts "You've exceeded the number of attempts. Bye!" if attempts == 4