class CommunitiesController < ApplicationController
  def show
    @community = Community.find(params[:id])
    @sport = Sport.find(params[:sport_id])
  end

  def new
  end

  def edit
  end
end
