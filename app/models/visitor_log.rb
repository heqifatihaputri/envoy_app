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
end
