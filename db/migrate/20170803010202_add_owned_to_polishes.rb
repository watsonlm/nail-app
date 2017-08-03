class AddOwnedToPolishes < ActiveRecord::Migration[5.1]
  def change
    add_column :polishes, :owned, :integer
  end
end
