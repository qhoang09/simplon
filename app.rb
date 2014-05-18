require 'sinatra'

get '/' do 
  erb :home
end

get '/about' do 
  erb :about
end


post'/resultat' do 

  @choix_joueur=params.keys.to_s
  @choix_ordinateur=""
  @resultat =""

  puts @choix_joueur.class

  @index_ordinateur = rand(3)
  if @index_ordinateur == 0 then @choix_ordinateur = "rock"
  elsif @index_ordinateur == 1 then @choix_ordinateur = "paper"
  else @choix_ordinateur = "scissors"
  end


  string_joueurgagne = "You won"
  string_ordigagne = "You lose"
  string_egalite = "It's a tie"

# puts "How many rounds to win the game?"
# rounds = gets.chomp.to_i
# @Points_player1 = 0
# @Points_player2 = 0

# def chifoumi()
#   puts "choose Rock, Paper, Scissors"

#   puts "You chose #{player1} and your opponent chose #{player2}"

  case(@choix_joueur)

  when '["rock"]'
    case(@choix_ordinateur)
      when "rock"
        @resultat = string_egalite
      when "paper"
        @resultat = string_ordigagne
        # @Points_player2 += 1
      when "scissors"
        @resultat = string_ordigagne
        # @Points_player1 += 1
    end

  when '["paper"]'
    case(@choix_ordinateur)
      when "rock"
        @resultat = string_ordigagne
        # @Points_player1 += 1
      when "paper"
        @resultat = string_egalite
      when "scissors"
        @resultat = string_ordigagne
        # @Points_player2 += 1
    end

  when '["scissors"]'
    case(@choix_ordinateur)
      when "rock"
        @resultat = string_ordigagne
        # @Points_player2 += 1
      when "paper"
        @resultat = string_ordigagne
        # @Points_player1 += 1
      when "scissors"
        @resultat = string_egalite
    end
  end


# end

# until @Points_player1 == rounds || @Points_player2 == rounds
#   chifoumi()
#   puts "You #{@Points_player1} - #{@Points_player2} Opponent"
# end

erb :resultat
end

