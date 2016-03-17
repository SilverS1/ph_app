class Product < ActiveRecord::Base
	validates :title, presence: true, length: { maximum: 50 }
	validates :description, presence: true, length: { maximum: 400 }
	validates :link, presence: true, length: { maximum: 200 }
	mount_uploader :image, ImageUploader

end
