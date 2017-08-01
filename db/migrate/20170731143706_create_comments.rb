class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_entry
      t.integer :userid
      t.integer :polishid

      t.timestamps
    end
  end
end
