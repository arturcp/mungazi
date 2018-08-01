class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :image_url, presence: true
  validates :short_title, presence: true

  mount_uploader :image_url, ImageUploader
end
