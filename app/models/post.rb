class Post < ApplicationRecord
  scope :posts_by, ->(user) {where(user_id: user.id)}

  validates_presence_of :title, :body, :user_id
  belongs_to :users, optional: true


  
end
