class CreateWhalers < ActiveRecord::Migration[5.2]
  def change
    create_table :whalers do |t|
      t.string :name
      t.text :description
      t.integer :strength
      t.integer :skill
      t.string :image_url
      t.string :email

      t.timestamps
    end
  end
end
