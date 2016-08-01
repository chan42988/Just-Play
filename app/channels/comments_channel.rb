# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class CommentsChannel < ApplicationCable::Channel
	def self.broadcast(comment)
		broadcast_to comment.chat, comment:
			CommentsController.render(partial: 'comments/comment', locals: { comment: comment })
	end

  def subscribed
    stream_for Chat.last
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
