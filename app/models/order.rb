class Order < ActiveRecord::Base
	validates :fio, presence: true 
	validates :phone, presence: true 
	validates :org_inn, presence: true 
	validates :org_name, presence: true 
	validates :org_phone, presence: true 
	validates :interest, presence: true 
	validates :supply_city, presence: true 
end