class Game < ActiveRecord::Base
  OPPONENTS = %w[Warrior Shaman Rogue Paladin Hunter Druid Warlock Mage Priest]

  belongs_to :deck

  validates :deck, :opponent_class, presence: true
  validates :opponent_class, inclusion: OPPONENTS

end
