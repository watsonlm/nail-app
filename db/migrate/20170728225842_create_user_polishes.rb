class CreateUserPolishes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_polishes do |t|
      t.integer :user_id
      t.integer :polish_id

      t.timestamps
    end
  end
end
