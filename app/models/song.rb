class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true, if: :repeated?
  validates :released, inclusion: {}
  validates :artist_name, presence: true

  def repeated?

  end
end
