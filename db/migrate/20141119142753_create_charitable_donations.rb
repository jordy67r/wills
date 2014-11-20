class CreateCharitableDonations < ActiveRecord::Migration
  def change
    create_table :charitable_donations do |t|
      t.belongs_to :will, index: true
      t.integer :charity_id
      t.string :amount
      t.text :instruction
      t.boolean :allow_alternate

      t.timestamps
    end
  end
end
