class ParamsGamesController < ApplicationController
  def game
    @name = ''
    @victory = ''
    @message = params[:message]
    unless @message.nil?
      @name = @message
    end
    if @name.upcase.start_with?("A")
      @victory = 'Your name starts with the first letter of the alphabet!'
    end
  end

  def number_game
    
    message = params[:message].to_i
    number = 36
    unless message.nil?
      if message < 1 || message > 100
        @answer = "out of bounds"
      elsif  message > number
        @answer = "The number is lower"
      elsif message < number
        @answer = "The number is higher"
      elsif message == number
        @answer = "you guessed it"
      end
    end
  end
end