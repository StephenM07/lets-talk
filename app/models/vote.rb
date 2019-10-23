class Vote < ApplicationRecord
  belongs_to :post
  validates_uniqueness_of :upvote, scope: [:post_id, :ip_address]
end
