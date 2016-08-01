class CommentsController < ApplicationController
	before_action :set_chat

	def create
		@chat.comments.create! comments_params
		CommentsChannel.broadcast(comment)
		redirect_to @chat
	end

	private
	def set_chat
		@chat = Chat.find(params[:chat_id])
	end

	def comments_params
		params.required(:comment).permit(:body)
	end
end