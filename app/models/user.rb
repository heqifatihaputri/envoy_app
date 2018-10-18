class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :validatable, :lockable, :confirmable, :timeoutable, timeout_in: 30.minutes

  validates :full_name, presence: :true
  validates :full_name, uniqueness: :true
  validates_uniqueness_of :email

  belongs_to :role, optional: true
  has_many :locations
  accepts_nested_attributes_for :locations

  after_create :init_location

  attr_accessor :address, :company_name

  # def init_location locations.create(address: address, company_name: company_name)
  # end

  def init_location
    locations.create(address: address,  company_name: company_name)
  end
end
