class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :deck
      t.string :opponent_class
      t.boolean :did_i_win

      t.timestamps
    end
  end
end
