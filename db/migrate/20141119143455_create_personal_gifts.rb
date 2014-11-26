class CreatePersonalGifts < ActiveRecord::Migration
  def change
    create_table :personal_gifts do |t|
      t.string :relationship
      t.string :first_name
      t.string :middle_name
      t.string :surname
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :county
      t.string :postcode
      t.string :country
      t.belongs_to :will, index: true
      t.text :description
      t.boolean :as_cash_if_sold

      t.timestamps
    end
  end
end
