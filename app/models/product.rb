class Product < ActiveRecord::Base
	validates :title, presence: true
	validates :subtitle, presence: true
	validates :desc_col1, presence: true
	mount_uploader :productimg, ProductimgUploader
end
