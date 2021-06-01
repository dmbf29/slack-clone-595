class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    # ChatroomChannel.broadcast_to(
    #   chatroom,
    #   'User has joined the chat'
    # )
    stream_for chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
