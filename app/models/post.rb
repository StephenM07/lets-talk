class Post < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :body, presence: true, length: { maximum: 20, minimum: 3 }
end
