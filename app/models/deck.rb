class Deck < ActiveRecord::Base
  HEROES = %w[Warrior Shaman Rogue Paladin Hunter Druid Warlock Mage Priest]

  has_many :games, dependent: :destroy
  validates :hero_class,:deck_name,:version, presence:true 

  def wins
    games.where(did_i_win: true).count
  end
end
