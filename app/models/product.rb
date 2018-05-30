class Product < ApplicationRecord
  mount_uploaders :icons, IconUploader
  serialize :icons, JSON

  belongs_to :user
  validates :name, :price, :count, presence: true
end
