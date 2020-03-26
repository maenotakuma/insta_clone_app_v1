class Post < ApplicationRecord
  belongs_to :user
  mount_uploaders :images, PostImageUploader
  serialize :images, JSON
  validates :images, presence: true
  validates :body, presence: true, length: { maximum: 1000 }
end
