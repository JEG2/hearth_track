require 'test_helper'

class GameTest < ActiveSupport::TestCase

  test "all but 'did i win' must not be enpty" do
    game = Game.new
    assert game.invalid?
    assert game.errors[:deck].any?
    assert game.errors[:opponent_class].any?
    assert game[:did_i_win] == nil
  end


  test "don't take bad class name" do
    game = Game.new(deck: "miser",
                      opponent_class: "pheasant",
                      did_i_win: true)
    assert game.invalid?
  end

end
