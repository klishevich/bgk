class PagesController < ApplicationController
	def home
	end

	def index
		@pages = Page.all
	end
end
