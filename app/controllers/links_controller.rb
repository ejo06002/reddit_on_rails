class LinksController < ApplicationController

	def index
		@link = Link.all
	end

	def show
		@link = Link.find(params[:id])
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link])
		if @link.save
			redirect_to '/links'
		else
			render 'new'
			flash[:notice] = "Didn't work"

		end


	end


end
