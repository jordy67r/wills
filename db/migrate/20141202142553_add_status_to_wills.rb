class AddStatusToWills < ActiveRecord::Migration
  def change
    add_column :wills, :complete, :boolean, default: false
  end
end
