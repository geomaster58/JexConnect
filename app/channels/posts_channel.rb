class PostsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "posts_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(data)
    current_user.post.create!(body: data['message'])
  end
end