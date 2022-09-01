class Party < ApplicationRecord
  acts_as_favoritable
  has_one_attached :photo
  belongs_to :user
  validates :title, presence: true
  validates :music_genre, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :starttime, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  include PgSearch::Model
  pg_search_scope :party_search,
                  against: [:title, :music_genre, :location],
                  using: {
                    tsearch: { prefix: true },
                  }

end
