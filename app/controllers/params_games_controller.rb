class ParamsGamesController < ApplicationController
  def game
    @name = ''
    @victory = ''
    @message = params[:message]
    if @message != nil
      @name = @message
    end
    if @name.upcase.start_with? "A"
      @victory = 'Your name starts with the first letter of the alphabet!'
    end
  end
end
