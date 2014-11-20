class CreateTestatorDetails < ActiveRecord::Migration
  def change
    create_table :testator_details do |t|
      t.belongs_to :will, index: true
      t.boolean :consent
      t.string :phone_no
      t.string :gender
      t.string :dob
      t.string :domicile_country
      t.string :children
      t.boolean :children_age
      t.boolean :planning_marrige
      t.boolean :effective_post_marrige
      t.boolean :effective_post_death_sans_marrige
      t.boolean :tax_responsibility
      t.string :mirror_will

      t.timestamps
    end
  end
end
