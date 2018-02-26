class Post < ApplicationRecord
  scope :posts_by, ->(user) {where(user_id: user.id)}
  validates :body, presence: true, length: { minimum: 5, maximum: 1000 }
  belongs_to :users, optional: true
  after_create_commit { PostBroadcastJob.perform_later(self) }
end
