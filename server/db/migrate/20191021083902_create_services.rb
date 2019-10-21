class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.integer :pro_id
      t.string :name
      t.integer :price
      t.string :description
      t.integer :duration

      t.timestamps
    end
  end
end
