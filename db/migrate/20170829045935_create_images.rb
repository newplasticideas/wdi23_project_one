class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text :title
      t.text :link
      t.text :description
			t.integer :user_id

      t.timestamps
    end
  end
end
