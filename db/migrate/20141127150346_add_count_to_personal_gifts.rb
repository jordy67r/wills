class AddCountToPersonalGifts < ActiveRecord::Migration
  def change
    add_column :personal_gifts, :count, :integer
  end
end
