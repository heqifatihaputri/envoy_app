class Invite < ApplicationRecord
  belongs_to :location

  include PgSearch
  pg_search_scope :search_by_full_name, against: [:full_name],
    using: {
      tsearch: {
        prefix: true
      }
    }

  pg_search_scope :search_by_date, against: [:arrival]

  def sign_in
     self.signed_in = true
     self.sign_in_time = Time.now
     self.save!
  end

  def sign_out
     self.signed_in = false
     self.save!
  end

end

