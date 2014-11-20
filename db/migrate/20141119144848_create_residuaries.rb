class CreateResiduaries < ActiveRecord::Migration
  def change
    create_table :residuaries do |t|
      t.belongs_to :will, index: true
      t.string :amount_allowed_to_distribute

      t.timestamps
    end
  end
end
