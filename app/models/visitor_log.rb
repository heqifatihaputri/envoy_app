class VisitorLog < ApplicationRecord
  belongs_to :location

  include PgSearch
  pg_search_scope :search_by_full_name, against: [:your_full_name],
    using: {
      tsearch: {
        prefix: true
      }
    }

  pg_search_scope :search_by_date, against: [:created_at]

  def sign_out
    self.signed_out = true
    self.sign_out_time = Time.now
    self.save!
  end
end
