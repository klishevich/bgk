class Porder < ActiveRecord::Base
	belongs_to :porder_status
	has_many :porder_items, dependent: :destroy
	accepts_nested_attributes_for :porder_items, allow_destroy: true, 
		reject_if: proc { |attributes| attributes['quantity'].blank? }
	before_create :set_porder_status

	private
	def set_porder_status
		self.porder_status_id = 1
	end

end
