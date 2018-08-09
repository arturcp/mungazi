class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true
  validates :short_title, presence: true

  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

  self.per_page = 2
end
