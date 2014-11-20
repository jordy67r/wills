class CreateCashGifts < ActiveRecord::Migration
  def change
    create_table :cash_gifts do |t|
      t.belongs_to :will, index: true
      t.string :shared_to
      t.string :amount
      t.string :certain_age
      t.string :if_dead
      t.string :certain_age_if_dead

      t.timestamps
    end
  end
end
