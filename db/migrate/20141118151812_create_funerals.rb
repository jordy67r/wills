class CreateFunerals < ActiveRecord::Migration
  def change
    create_table :funerals do |t|
      t.belongs_to :will, index: true
      t.string :preference
      t.text :wishes
      t.string :donate_organs
      t.text :specific_organs

      t.timestamps
    end
  end
end
