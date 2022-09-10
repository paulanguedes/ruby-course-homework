dial_book = {
  "newyorl" => "212",
  "edison" => "908",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get citu names from hash
def get_city_names(dial_book_hash)
  dial_book_hash.keys
end

# Get area code based on given hash and key
def get_area_code(dial_book_hash, key)
  dial_book_hash[key]
end

# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name? (y/n)"
  option = gets.chomp.downcase
  break if option != "y"

  puts "Wich city do you want the area code for?"
  puts get_city_names(dial_book)

  puts "Enter your selection"
  selection = gets.chomp.downcase
  if dial_book.include?(selection)
    puts "The area code for #{selection} is #{get_area_code(dial_book, selection)}"
  else
    puts "This city isn't listed. Sorry"
  end
end





