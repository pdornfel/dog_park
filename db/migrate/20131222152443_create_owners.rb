class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|

      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :address
      t.string :zip
      t.string :state


      t.timestamps
    end
  end
end
