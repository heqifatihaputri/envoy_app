class Location < ApplicationRecord
  has_many :users

  validates :company_name, presence: true
end
