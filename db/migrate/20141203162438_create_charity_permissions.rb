class CreateCharityPermissions < ActiveRecord::Migration
  def change
    create_table :charity_permissions do |t|
      t.boolean :permission
      t.belongs_to :will, index: true

      t.timestamps
    end
  end
end
