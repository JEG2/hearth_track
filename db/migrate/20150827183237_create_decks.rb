class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :hero_class
      t.string :deck_name
      t.integer :version

      t.timestamps
    end
  end
end
