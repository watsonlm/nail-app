class CreatePolishes < ActiveRecord::Migration[5.1]
  def change
    create_table :polishes do |t|
      t.string :name
      t.string :brand
      t.string :hex
      t.string :color

      t.timestamps
    end
  end
end
