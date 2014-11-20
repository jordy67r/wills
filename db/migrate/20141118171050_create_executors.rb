class CreateExecutors < ActiveRecord::Migration
  def change
    create_table :executors do |t|
      t.belongs_to :will, index: true
      t.boolean :notary_express
      t.boolean :first
      t.boolean :second
      t.boolean :third
      t.boolean :forth
      t.boolean :replacement_first
      t.boolean :replacement_second
      t.boolean :replacement_third
      t.boolean :replacement_forth

      t.timestamps
    end
  end
end
