class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			redirect_to @contact
		else
			render 'new'
		end
	end

	def show
	end

	private

	def contact_params
		params.require(:contact).permit(:name, :email, :phone, :email, :topic, :message)
	end 
end
