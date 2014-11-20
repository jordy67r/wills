class CreateAdministrations < ActiveRecord::Migration
  def change
    create_table :administrations do |t|
      t.belongs_to :will, index: true
      t.boolean :accept_admin
      t.boolean :expanded_powers
      t.boolean :borrow_powers
      t.boolean :appoint_admin_powers
      t.boolean :buy_sell_powers
      t.boolean :liability_powers

      t.timestamps
    end
  end
end
