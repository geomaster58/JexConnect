class PostsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "posts_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(data)
    Post.create!(body: data['message'], user_id: current_user.id)
  end
end