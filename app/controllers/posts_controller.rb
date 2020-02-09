class PostsController < ApplicationController
  def create
    @post = Post.new(params[:post].permit(:name, :body, :topic_id))
    @post.save!
    redirect_to topic_path(params[:post]['topic_id'])
  end
end
