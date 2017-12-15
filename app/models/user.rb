class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable,  :trackable, :validatable
  has_many :posts, dependent: :destroy
  has_many :infos, dependent: :destroy
  has_many :active_connections, class_name:  "Connection",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :following, through: :active_connections, source: :followed

  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end

       
end
