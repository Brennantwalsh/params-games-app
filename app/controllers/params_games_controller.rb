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
  
  def url
    @wildcard = params[:wildcard]
  end

  def guess_game
    message = params[:guess].to_i
    number = 36
    unless message.nil?
      if message < 1 || message > 100
        @answer = "out of bounds"
      elsif message > number
        @answer = "The number is lower"
      elsif message < number
        @answer = "The number is higher"
      elsif message == number
        @answer = "you guessed it"
      end
    end
  end

  def get_form
  end

  def send_form
    @hello = params[:message]
  end

  def guess_again
  end

  def did_you
    message = params[:message].to_i
    number = 36
    unless message.nil?
      if message < 1 || message > 100
        @response = "out of bounds"
      elsif message > number
        @response = "The number is lower"
      elsif message < number
        @response = "The number is higher"
      elsif message == number
        @response = "you guessed it"
      end
    end
  end
end