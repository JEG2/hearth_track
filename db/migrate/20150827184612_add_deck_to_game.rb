class AddDeckToGame < ActiveRecord::Migration
  def change
    add_reference :games, :deck, index: true
  end
end
