class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params) 
    if @story.save
      redirect_to story_url(@story)
    else
      render 'new'
    end
   end
  
  def show
    @story = Story.find(params[:id])
  end

  private
    def story_params 
      params.require(:story).permit(:PPE_type1, :Amount1, :Recipient1,:PPE_type2, :Amount2, :Recipient2)
    end

end
