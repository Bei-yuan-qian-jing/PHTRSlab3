class CreatePotholelists < ActiveRecord::Migration[5.1]
  def change
    create_table :potholelists do |t|
      t.integer :identify
      t.string :address
      t.integer :size
      t.string :location
      t.string :district
      t.integer :priority

      t.timestamps
    end
  end
end
