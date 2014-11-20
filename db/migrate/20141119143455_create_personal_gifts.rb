class CreatePersonalGifts < ActiveRecord::Migration
  def change
    create_table :personal_gifts do |t|
      t.belongs_to :will, index: true
      t.text :description
      t.boolean :as_cash_if_sold

      t.timestamps
    end
  end
end
