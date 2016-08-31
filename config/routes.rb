Rails.application.routes.draw do
  get '/params_game' => 'params_games#game'
  get '/number_game' => 'params_games#number_game'
  get '/url_segment_example/:wildcard' => 'params_games#url'
  get '/guess_number/:guess' => 'params_games#guess_game'
end
