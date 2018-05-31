class Post < ApplicationRecord
	mount_uploader :photo, PhotoUploader

	belongs_to :category
			validates :name, :year, :price, :ks, :privod, :kuzov, presence: true
end
