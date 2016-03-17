class Product < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates :title, presence: true, length: { maximum: 50 }
	validates :description, presence: true, length: { maximum: 400 }
	validates :link, presence: true, length: { maximum: 200 }
	validates :image, presence: true
	validates :product_type, presence: true
	

end
