class CreateResiduaryDetails < ActiveRecord::Migration
  def change
    create_table :residuary_details do |t|
      t.belongs_to :will, index: true
      
      t.string :residuary_type
      t.string :share
      t.string :certain_age
      t.string :if_dead
      t.string :if_dead_certain_age

      t.timestamps
    end
  end
end
