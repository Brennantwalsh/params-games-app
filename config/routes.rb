Rails.application.routes.draw do
  get '/params_game' => 'params_games#game'
  get '/number_game' => 'params_games#number_game'
  get '/url_segment_example/:wildcard' => 'params_games#url'
  get '/guess_number/:guess' => 'params_games#guess_game'
  get '/show_form' => 'params_games#get_form'
  post '/send_form' => 'params_games#send_form'
  get '/guess_again' => 'params_games#guess_again'
  post '/did_you_win' => 'params_games#did_you'
  get '/did_you_win' => 'params_games#did_you'
end
