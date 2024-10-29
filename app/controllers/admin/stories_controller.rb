class Admin::StoriesController < ApplicationController
  # before_action :authenticate_user!
  load_and_authorize_resource

  # GET /stories or /stories.json
  def index
    @stories = Story.all
  end
end
