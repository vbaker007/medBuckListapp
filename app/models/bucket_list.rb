class BucketList < ActiveRecord::Base
  has_many :meditations 
  belongs_to :user
end
