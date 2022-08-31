class Party < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :music_genre, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :starttime, presence: true

  include PgSearch::Model
  pg_search_scope :party_search,
                  against: [:title, :music_genre, :location],
                  using: {
                    tsearch: { prefix: true },
                  }
end
