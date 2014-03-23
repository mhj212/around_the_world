class StoriesController < ApplicationController

    def index
    	#@place = Place.find(params[:id])
  puts '*********'

      	@stories = Story.where(place_id: params[:place_id])
      	render json: @stories
    end

    def create
     @story = Story.create(story_params)
     render json: @story
     # @story = Story.create(story_params)
     #  place = Place.find(params[:place_id])
     #  place.stories << @story
     # render json: @story
    end

    def show
      @Story = Story.where(params[:id])

      render json: @story
    end
    # def show
    #  @story = Story.create(story_params)
    #  render json: @story
    # end

    def destroy

      @story = Story.find(params[:id])
      # current_user.delete_story(story)
      Story.delete(params[:id])
      render json: {success: true}
    end

    private
    def story_params
      params.permit(:title, :body, :place_id, :user_id)
    end

end