class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :email
      t.string :password_digest
      t.text :firstname
      t.text :lastname
      t.text :country
      t.text :state
      t.integer :postcode
      t.text :dob
      t.text :gender
			t.text :images, array: true, default: []
			t.text :defaultimage
			t.timestamps
    end
  end
end
