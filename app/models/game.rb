class Game < ActiveRecord::Base
  validates :deck, :opponent_class, presence: true
end
