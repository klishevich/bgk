class Product < ActiveRecord::Base
	belongs_to :category
	validates :title, presence: true
	validates :subtitle, presence: true
	validates :desc_col1, presence: true
	mount_uploader :productimg, ProductimgUploader
	has_many :porder_items
	validates :order, presence: true
end
