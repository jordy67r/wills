class AddCountToCharitableDonation < ActiveRecord::Migration
  def change
    add_column :charitable_donations, :count, :integer
  end
end
