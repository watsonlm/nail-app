class CreateNailArts < ActiveRecord::Migration[5.1]
  def change
    create_table :nail_arts do |t|
      t.string :nailpic

      t.timestamps
    end
  end
end
