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
	
	
	def self.search_genres(genre)
		if search
		where('product_type LIKE ?', "%#{genre}%")
		else 
		all
		end
	end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	TYPES = [['Android','ANDROID'],['Chrome','CHROME'],['Web','WEB'],['Iphone','IPHONE'],
	['Slack','SLACK'],['Mac','MAC'],['Food','FOOD'],['Music','MUSIC'],
	['Hardware','HARDWARE'],['Virtual Reality','VIRTUAL REALITY'],['Email','EMAIL'],['IPad','IPAD'],
	['Windows','WINDOWS'],['Politics','POLITICS'],['Art','ART'],['Travel','TRAVEL'],
	['Music','MUSIC'],['Business','BUSINESS'],['Indie Games','INDIE GAMES'],['Occulus Rift','OCCULUS RIFT'],
	['Linux','LINUX'],['Daredevil','DAREDEVIL'],['Developer Tools','DEVELOPER TOOLS'],['Extensions','EXTENSIONS'],
	['Health and Fitness','HEALTH AND FITNESS'],['Social Media','SOCIAL MEDIA'],['Hobbit','HOBBIT']]
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	TECH = [['Android','ANDROID'],['Chrome','CHROME'],['Web','WEB'],['Iphone','IPHONE'],
	['Slack','SLACK'],['Mac','MAC'],['Hardware','HARDWARE'],['Virtual Reality','VIRTUAL REALITY'],
	['Email','EMAIL'],['IPad','IPAD'],['Windows','WINDOWS'],['Linux','LINUX'],
	['Developer Tools','DEVELOPER TOOLS'],['Extensions','EXTENSIONS']]
	
	GAMES = [['Virtual Reality','VIRTUAL REALITY'],['IPad','IPAD'],['Indie Games','INDIE GAMES'],
	['Occulus Rift','OCCULUS RIFT']]
	
	BOOKS = [['Food','FOOD'],['Music','MUSIC'],['Politics','POLITICS'],['Art','ART'],['Travel','TRAVEL'],
	['Music','MUSIC'],['Business','BUSINESS'],['Health and Fitness','HEALTH AND FITNESS'],
	['Social Media','SOCIAL MEDIA'],['Daredevil','DAREDEVIL']]
	
	PODCASTS = [['Food','FOOD'],['Music','MUSIC'],['Politics','POLITICS'],['Art','ART'],['Travel','TRAVEL'],
	['Music','MUSIC'],['Business','BUSINESS'],['Health and Fitness','HEALTH AND FITNESS'],
	['Social Media','SOCIAL MEDIA']]
	
	
	
	
	
	
	
	
	
	
	

end
