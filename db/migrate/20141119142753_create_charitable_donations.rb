class CreateCharitableDonations < ActiveRecord::Migration
  def change
    create_table :charitable_donations do |t|
      t.belongs_to :will, index: true
      t.boolean :popular_charity
      t.string :popular_charity_name
      t.string :name
      t.string :registered_charity_number
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :county
      t.string :country
      t.string :postcode
      t.string :amount
      t.text :instruction
      t.boolean :allow_alternate

      t.timestamps
    end
  end
end
