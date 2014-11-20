class CreateCharityDetails < ActiveRecord::Migration
  def change
    create_table :charity_details do |t|
      t.belongs_to :will, index: true
      t.string :name
      t.string :registered_charity_number
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :county
      t.string :country
      t.string :postcode

      t.timestamps
    end
  end
end
