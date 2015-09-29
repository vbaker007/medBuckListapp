class CreateMeditations < ActiveRecord::Migration
  def change
    create_table :meditations do |t|
      t.string :type
      t.string :technique
      t.string :group
      t.integer :bucket_id
      t.integer :longitude
      t.integer :latitude

      t.timestamps null: false
    end
  end
end
