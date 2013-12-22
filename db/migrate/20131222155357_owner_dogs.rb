class OwnerDogs < ActiveRecord::Migration
  def change
    create_table :owner_dogs do |t|

      t.integer :owner_id
      t.integer :dog_id

      t.timestamps
    end
  end
end
