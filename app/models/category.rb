class Category < ActiveRecord::Base
	validates :name, presence: true 
	validates :order, presence: true 
	has_many :products
end
