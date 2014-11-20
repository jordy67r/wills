class CreatePartnerDetails < ActiveRecord::Migration
  def change
    create_table :partner_details do |t|
      t.belongs_to :will, index: true
      t.string :phone_no
      t.string :gender
      t.string :dob
      t.string :domicile_country

      t.timestamps
    end
  end
end
