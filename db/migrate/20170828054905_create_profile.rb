class CreateProfile < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :headline
      t.text :layout
      t.text :aboutme
      t.text :liketomeet
      t.text :interests
      t.text :music
      t.text :movies
      t.text :television
      t.text :books
      t.text :heroes
    end
  end
end
