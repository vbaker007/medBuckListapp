class CreateBucketLists < ActiveRecord::Migration
  def change
    create_table :bucket_lists do |t|
      t.string :title
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
