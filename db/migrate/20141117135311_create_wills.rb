class CreateWills < ActiveRecord::Migration
  def change
    create_table :wills do |t|
      t.string :title
      t.string :user_id

      t.timestamps
    end
  end
end
