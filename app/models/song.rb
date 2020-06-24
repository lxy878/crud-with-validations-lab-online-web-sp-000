class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: {if: :repeated?}
  validates :release_year, inclusion: { in: %w{true false}}
  validates :released, inclusion: {}
  validates :artist_name, presence: true

  def repeated?

  end
end
