class CreateWorkorders < ActiveRecord::Migration[5.1]
  def change
    create_table :workorders do |t|
      t.string :location
      t.integer :size
      t.string :crew_ID
      t.integer :peoplenumber
      t.text :assign_equipment
      t.float :time
      t.string :status
      t.float :material_used
      t.float :cost

      t.timestamps
    end
  end
end
