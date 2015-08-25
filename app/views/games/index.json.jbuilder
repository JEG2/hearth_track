json.array!(@games) do |game|
  json.extract! game, :id, :deck, :opponent_class, :did_i_win
  json.url game_url(game, format: :json)
end
