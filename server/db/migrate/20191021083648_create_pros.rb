class CreatePros < ActiveRecord::Migration[6.0]
  def change
    create_table :pros do |t|
      t.string :first_name
      t.string :last_name
      t.string :cell_num
      t.string :password

      t.timestamps
    end
  end
end
