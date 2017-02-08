comp = 0
use = 0
breaker = false
until breaker do
  puts "\nWelcome to Pontoon\n=================="
  puts "\t\t\t\t\t\t\t\t\t\t\tComputer: #{comp}"
  puts "\t\t\t\t\t\t\t\t\t\t\t    User: #{use}"
  user = [1,2,3,4,5,6,7,8,9,10,10,10]
  computer = rand(15..21)
  over = false
  count = 0
  bust = false

  until over do
    if count == 0
      user_array_pos_1 = rand(0..11)
      user_array_pos_2 = rand(0..11)
      card_sum = user[user_array_pos_1] + user[user_array_pos_2]
      count = 1
      puts "\nCard number 1 is #{user[user_array_pos_1]}"
      puts "\nCard number 2 is #{user[user_array_pos_2]}"
      puts "\nThe sum of your cards is #{card_sum}"
    end

    print "\nDo you want to stick (s) or twist (t): "
    choice = gets.chomp.downcase
    if choice == 't'
      new_card_pos = rand(0..11)
      card_sum += user[new_card_pos]
      puts "\nYour new card is #{user[new_card_pos]}"
      puts "\nThe sum of your cards is #{card_sum}"

    elsif choice == 's'
      puts "\nThe sum of your cards is #{card_sum}"
      over = true
    end

    if card_sum > 21
      over = true
      bust = true
    end

    if card_sum > 21 && over == true
      puts "\nYour bust! You loose"
      comp += 1
      puts "\nThe computer got #{computer}"
      puts "\nThe computer wins!"
    end

    if card_sum > computer && over == true && bust == false
      use += 1
      puts "\nThe computer got #{computer}"
      puts "\nYou win!"
    end

    if card_sum < computer && over == true && bust == false
      puts "\nThe computer got #{computer}"
      puts "\nThe computer wins!"
      comp += 1
    end

    if card_sum == computer && over == true
      puts "\nIts a draw!"
    end

    if card_sum > 21
      over = true
    end

  end
print "\nDo you want to play again? y/n: "
dec = gets.chomp.downcase
if dec == 'n'
  breaker = true
  if use > comp
    puts "\nYou win! You beat the computer by #{use - comp} games"
  end

  if use < comp
    puts "\nThe computer wins! It beat you by #{comp - use} games"
  end

  if use == comp
    puts "\nIts a draw! #{comp} games each!"
  end

end
end