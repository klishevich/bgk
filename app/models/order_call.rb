class OrderCall < ActiveRecord::Base
	validates :name, presence: true 
	validates :phone, presence: true 
	validates :time, presence: true 
	validates :question, presence: true 
end
