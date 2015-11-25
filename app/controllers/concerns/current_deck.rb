module CurrentDeck
  extend ActiveSupport::Concern
  private
    def set_deck
      @deck = Deck.find(session[:deck_id])
    rescue ActiveRecord::RecordNotFound
      redirect_to decks_path
    end
end
