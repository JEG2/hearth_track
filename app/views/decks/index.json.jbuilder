json.array!(@decks) do |deck|
  json.extract! deck, :id, :hero_class, :deck_name, :version
  json.url deck_url(deck, format: :json)
end
