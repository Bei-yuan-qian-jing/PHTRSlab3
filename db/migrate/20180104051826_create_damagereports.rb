class CreateDamagereports < ActiveRecord::Migration[5.1]
  def change
    create_table :damagereports do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.string :type
      t.float :cost

      t.timestamps
    end
  end
end
