class Gallery < ApplicationRecord

  belongs_to :project

  validates :image_url, presence: true
  validates :cover_image_url, presence: true
end
