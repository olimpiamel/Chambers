class Property < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: {minimum: 15}
  validates :price, presence: true, length: {minimum: 2}
  validates :address, presence: true, length: {minimum: 10}
  validates :image, file_size: {less_than: 5.megabytes}

  mount_uploaders :images, ImageUploader
  serialize :images, JSON

end
