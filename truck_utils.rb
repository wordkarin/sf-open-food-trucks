def print_trucks(trucks)
  #takes an array of truck objects, and prints them.
  puts "\n"
  printf("%-40s %10s\n", "TRUCK", "ADDRESS")
  trucks.each do |truck|
    printf("%-40s %10s\n", truck.name, truck.address)
  end
end

def list_trucks(trucks)
  if trucks.length == 0
    puts "No trucks open now, sorry."
  end
  # print the first 10 (or all if there's less than 10)
  trucks_to_print = trucks.shift(10)
  print_trucks(trucks_to_print)

  # let the user pick if they want to see more
  while trucks.length >= 1 do
    puts "\nPress Y to see more trucks, or any other key to quit.\n"
    user_input = gets.chomp.strip.downcase
    if user_input == "y"
      trucks_to_print = trucks.shift(10)
      print_trucks(trucks_to_print)
    else
      break
    end
  end
end
