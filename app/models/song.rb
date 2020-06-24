class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: {scope: [:artist_name, :release_year], message: "repeated by the same artist in the same year"}
  validates :released, inclusion: { in: %w(true, false)}
  # validates :release_year, presence: {if: :released}
  validates :artist_name, presence: true
end
