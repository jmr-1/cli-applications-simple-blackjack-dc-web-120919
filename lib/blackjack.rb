require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

#randomly deals card between 1-11
def deal_card
  return rand(1..11)
end

#totals sum of cards 
def display_card_total(num)
  puts "Your cards add up to #{num}"
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

#uses deal_card to make an initial hand 
def initial_round
  flop = deal_card + deal_card 
  display_card_total(flop)
  return flop 
end

def hit?(current_sum)
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
    
