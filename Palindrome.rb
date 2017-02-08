c = 0
while c == 0
  puts "\nEnter something to see if it is a palindrome: "
  puts ""
  inpu = gets.chomp 
  if inpu.reverse == inpu
    puts "\nIs a Palindrome!\n"
  end

  if inpu.reverse != inpu
    puts "\nNot a palindrome\n"
  end
  puts "\nWant to use this tool again? y/n\n"
  again = gets.chomp
  if again == 'y'
    c = 0
  end
  if again == 'n'
    c = 1
  end
end