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
    @answer = ''   
    @message = params[:message]
    @number = 36
    unless @message.nil?
      if @message.to_i > @number
        @answer = "The number is lower"
      elsif @message.to_i < @number
        @answer = "The number is higher"
      elsif @message.to_i == @number
        @answer = "you guessed it"
      end
    end
  end
end