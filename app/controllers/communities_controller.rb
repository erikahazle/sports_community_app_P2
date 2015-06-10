class CommunitiesController < ApplicationController
  def show
    @community = Community.find(params[:id])
    @sport = Sport.find(params[:sport_id])
  end

  def new
    @community = Community.new
    @sport = Sport.find(params[:sport_id])
  end

  def create
    sport = Sport.find(params[:sport_id])
    community = sport.communities.new params[:community].permit(:name, :description, :post_code, :image)
    if community.save
      redirect_to sport_path(sport)
    else
      render 'new'
    end
  end

end
