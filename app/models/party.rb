class Party < ApplicationRecord
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
end
