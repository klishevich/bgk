class Porder < ActiveRecord::Base
	belongs_to :porder_status
	has_many :porder_items, dependent: :destroy
	accepts_nested_attributes_for :porder_items, allow_destroy: true
	# reject_if: proc { |attributes| attributes['quantity'].blank? }
	before_create :set_porder_status
	validates :company_name, presence: true
	validates :person_name, presence: true
	validates :phone, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}

	def order_placed
		self.porder_status_id = 2
	end

	private
	def set_porder_status
		self.porder_status_id = 1
	end

end
