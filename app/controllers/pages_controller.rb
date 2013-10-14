class PagesController < ApplicationController

	def index
		@link = Link.paginate(:page => params[:page], :per_page => 2)

	end

end
