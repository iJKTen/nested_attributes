class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street_address1
      t.string :street_address2
      t.string :city
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
