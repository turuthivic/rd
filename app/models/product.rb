class Product < ActiveRecord::Base
	belongs_to :category
  has_attached_file :image, styles: { medium: "300x300", large: "500x500", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  	validates :title, uniqueness: true
  	# validates :price, presence: true
  	validates :category, presence:true
  	# validates  :image, presence: true
  	def self.search(search)
  		where('title || description LIKE? ', "%#{search}%")
  	end

end
