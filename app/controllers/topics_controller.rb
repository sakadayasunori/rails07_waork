class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = current_user.topics.new(topic_params)


    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger]
      render :new
    end
  end

    if 
  private
  def topic_params
    params.require(:topic).permit(:image, :description)
  end
end
