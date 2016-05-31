class Porder < ActiveRecord::Base
	belongs_to :porder_status
	has_many :porder_items
	before_create :set_porder_status

	private
	def set_porder_status
		self.porder_status_id = 1
	end

end
