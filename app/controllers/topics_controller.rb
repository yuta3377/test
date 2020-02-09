class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @new_topic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to topics_path
  end

  def show
    @topic = Topic.find(params[:id])
    @new_post = Post.new(topic_id: params[:id])
    @posts = Post.where(topic_id: params[:id])
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end
end
