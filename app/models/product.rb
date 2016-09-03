class Product < ActiveRecord::Base
	belongs_to :category
	has_attached_file :image, styles: { thumb: "300x250>", thumb: "300x250>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  	validates :title, uniqueness: true
  	# validates :price, presence: true
  	validates :category, presence:true
  	# validates  :image, presence: true

end
