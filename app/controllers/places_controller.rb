class PlacesController < ApplicationController
	def index
	  #@countries = Story.select("distinct country, id").group(:country, :id)
	  @places = Place.all
	end

	def edit
      @story = Story.find(params[:id])
      @place = Story.find(params[:id])
	end

	def update
       @story = Story.find(params:[:id])
       @story.update_attributes(story_params)
       render json: @story
	end

    def new
     @story. Story.new
    end

    def show
      @place = Place.find(params[:id])
      @places = Place.all
      @stories = Story.all
    end

    def create
     @story = Story.create(story_params)
     render json: @story
    end

    def destroy
     @story = Story.find(params[:id])
     @story.destroy
     render json: {}
    end

    def user
      render :json => current_user
    end


    private
    def story_params
      params.permit(:title, :body, :place_id)
    end
end