class CreatePropertyDetails < ActiveRecord::Migration
  def change
    create_table :property_details do |t|
      t.belongs_to :will, index: true
      t.string :land_reg_number
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
