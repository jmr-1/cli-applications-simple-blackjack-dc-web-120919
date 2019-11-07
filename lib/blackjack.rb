require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp 
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  flop = deal_card + deal_card 
  display_card_total(flop)
  return flop 
end

def hit?(current_sum)
  # code hit? here
  prompt_user
  user_input = get_user_input.downcase 
  
  if user_input == "s"
    
  elsif user_input == "h"
    current_sum += deal_card 
    display_card_total(current_sum)

  else 
    
    while user_input != "s" && user_input != "h" do 
      invalid_command
      prompt_user
      user_input = get_user_input.downcase 
    
    end 
    
  end 
  return current_sum 
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  sum_cards = initial_round
  
  while sum_cards <= 21 do 
    display_card_total(sum_cards)
    hit?(sum_cards)
  end 
  
end_game(sum_cards)
end
    
