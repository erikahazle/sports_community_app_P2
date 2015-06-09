class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def show
    @sport = Sport.find(params[:id])
    @communities = @sport.communities
    respond_to do |format|
      format.html
      format.json { render json: @communities }
    end
  end

end
