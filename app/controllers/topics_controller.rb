class TopicsController < ApplicationController
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      flash.now[:notice] = "Topic created Successfully!"
      respond_to do |format|
        format.html{redirect_to root_path}
        format.json {render json: {topic: @topic}}
      end
    else
      respond_to do |format|
        format.html{redirect_to new_topic_path}
        format.json {render json: {topic: @topic}}
      end
    end
  end
  private
  def topic_params
    params.require(:topic).permit(:heading,:topic_pic,:category_id,:content)
  end  
end
