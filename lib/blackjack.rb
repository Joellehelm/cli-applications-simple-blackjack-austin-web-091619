def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(number)
  num = number
  prompt_user
  uinput = get_user_input
  
    if uinput = 's'

      return num
    end
  if uinput == 'h'
    num += deal_card

  elsif uinput != 's' || uinput != 'h'
    invalid_command
    prompt_user



  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total >= 21
    total = hit?(total)
  end
end_game(total)

end
