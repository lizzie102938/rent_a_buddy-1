class CreateBuddies < ActiveRecord::Migration[6.1]
  def change
    create_table :buddies do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :city
      t.text :biography
      t.text :hobby
      t.string :language

      t.timestamps
    end
  end
end
