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
      begin
        community.save
      rescue ActiveRecord::RecordInvalid => e
        flash[:error] = e.record.errors.full_messages.to_sentence
        render :action => "new"
      end
    end
    
end
