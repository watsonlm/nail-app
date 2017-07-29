class CreateUserPolishes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_polishes do |t|
      t.integer :userid
      t.integer :polishid

      t.timestamps
    end
  end
end
