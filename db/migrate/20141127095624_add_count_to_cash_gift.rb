class AddCountToCashGift < ActiveRecord::Migration
  def change
    add_column :cash_gifts, :count, :integer
  end
end
