class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: {scope: [:artist_name, :release_year], message: "repeated by the same artist in the same year"}
  validates :released, inclusion: { in: [true, false]}
  validates :release_year, presence: {if: :released}, numericality: {less_than_or_equal_to: Time.nww.year}
  validates :artist_name, presence: true
end
