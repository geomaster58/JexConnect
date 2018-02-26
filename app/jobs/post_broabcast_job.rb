class PostBroadcastJob < ApplicationJob
  queue_as :default

  def perform(post)
    ActionCable.server.broadcast "posts_channel",
                                 post: render_posts(post)
  end

  private

  def render_posts(post)
    PostsBroadcastController.render partial: 'posts/post', locals: {post: post}
  end
end