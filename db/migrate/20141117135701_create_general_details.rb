class CreateGeneralDetails < ActiveRecord::Migration
  def change
    create_table :general_details do |t|
      t.belongs_to :will, index: true
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

      t.timestamps
    end
  end
end
