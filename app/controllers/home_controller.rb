class HomeController < ApplicationController
	def index
		@items = Item.order("created_at desc").all
		logger.info "Current items are #{@items.inspect}"
	end

	def create
		@message = params[:card_text]
		logger.info "User submitted a message of (#{@message})"
		@item = Item.new
		@item.card_text = @message
		@item.save
		redirect_to "/"
	end
end