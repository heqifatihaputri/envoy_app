class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :confirmable

  validates :full_name, presence: :true
  validates :full_name, uniqueness: :true
  validates_uniqueness_of :email
end
