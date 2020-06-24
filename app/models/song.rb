class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: {scope: [:artist_name, :release_year]}
  validates :released, inclusion: { in: %w{true false} }
  validates :release_year, inclusion: { in: %w{true false},  }
  validates :artist_name, presence: true

  def repeated?

  end
end
