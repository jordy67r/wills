class CreateCashGifts < ActiveRecord::Migration
  def change
    create_table :cash_gifts do |t|
      t.belongs_to :will, index: true
      t.string :shared_to
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
      t.string :amount
      t.string :certain_age
      t.string :if_dead
      t.string :certain_age_if_dead

      t.timestamps
    end
  end
end
