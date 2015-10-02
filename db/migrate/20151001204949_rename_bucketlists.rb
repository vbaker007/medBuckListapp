class RenameBucketlists < ActiveRecord::Migration
  def change
    rename_table :bucket_lists, :bucketlists
  end
end
