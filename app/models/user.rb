class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable,  :trackable, :validatable
  has_many :posts, dependent: :destroy
  validates_presence_of :first_name      
end
