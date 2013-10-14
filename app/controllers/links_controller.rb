class LinksController < ApplicationController
before_filter :authenticate_user!
	def index
		@link = Link.all
	end

	def show
		@link = Link.find(params[:id])
		@comment = Comment.new
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link])
		if @link.save
			redirect_to '/'
		else
			render 'new'
			flash[:notice] = "Didn't work"

		end


	end


end
