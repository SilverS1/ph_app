class Product < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates :title, presence: true, length: { maximum: 50 }
	validates :description, presence: true, length: { maximum: 400 }
	validates :link, presence: true, length: { maximum: 200 }
	validates :image, presence: true
	validates :product_type, presence: true
	acts_as_votable
	has_many :comments
	belongs_to :user
	
	def self.search_products(search)
  		if search
   		 where('title LIKE ? or product_type LIKE ?', "%#{search}%", "%#{search}%")
  		else
   		 all
  		end
	end
	
	
	

end
