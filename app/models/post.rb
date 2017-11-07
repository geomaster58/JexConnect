class Post < ApplicationRecord
  scope :posts_by, ->(user) {where(user_id: user.id)}
end
