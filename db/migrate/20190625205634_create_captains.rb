class CreateCaptains < ActiveRecord::Migration[5.2]
  def change
    create_table :captains do |t|
      t.string :name
      t.string :email
      t.integer :ship_shares

      t.timestamps
    end
  end
end
