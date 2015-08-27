class Game < ActiveRecord::Base
  OPPONENTS = %w[Warrior Shaman Rogue Paladin Hunter Druid Warlock Mage Priest]

  validates :deck, :opponent_class, presence: true
  validates :opponent_class, inclusion: OPPONENTS

end
