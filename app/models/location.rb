class Location < ApplicationRecord
  belongs_to :user
  validates_presence_of :user
  has_many :visitor_logs
  has_many :invites
end
