class PorderItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :porder

	validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
	validate :product_present
	validate :porder_present

	before_save :finalize

	private
	def product_present
		if product.nil?
			errors.add(:product, "is not valid.")
		end
	end

	def porder_present
		if porder.nil?
			errors.add(:porder, "is not a valid order.")
		end
	end
end
