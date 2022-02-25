class AddPriceToBuddy < ActiveRecord::Migration[6.1]
  def change
    add_column :buddies, :photo, :string
    add_column :buddies, :price_hour, :integer
  end
end
