class CreateApplies < ActiveRecord::Migration[5.1]
  def change
    create_table :applies do |t|
      t.string :tittle
      t.string :body
      t.string :text
      t.string :name
      t.integer :edad

      t.timestamps
    end
  end
end
