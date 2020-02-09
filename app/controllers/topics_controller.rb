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
  end
end
