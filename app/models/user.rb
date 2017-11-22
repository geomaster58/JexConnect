class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable,  :trackable, :validatable
  has_many :posts, dependent: :destroy
  has_many :infos, dependent: :destroy

       
end
