class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.belongs_to :will, index: true
      t.boolean :appoint_future_guardians
      t.boolean :appoint_current_guardians
      t.boolean :second_guardian
      t.boolean :third_guardian
      t.boolean :forth_guardian
      t.boolean :replacement_guardian
      t.boolean :replacement_second_guardian
      t.boolean :replacement_third_guardian
      t.boolean :replacement_forth_guardian

      t.timestamps
    end
  end
end
