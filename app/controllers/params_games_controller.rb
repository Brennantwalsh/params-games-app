class ParamsGamesController < ApplicationController
  def game
    @message = params[:message]
  end
end
