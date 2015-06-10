class PostsController < ApplicationController
  def new
    @sport = Sport.find(params[:sport_id])
    @community = Community.find(params[:community_id])
    @post = Post.new
  end

  def create
    sport = Sport.find(params[:sport_id])
    community = Community.find(params[:community_id])
    post = community.posts.new params[:post].permit(:title, :content)
    if post.save
      redirect_to [sport, community]
    else
      render 'new'
    end
  end

  def show
    @sport = Sport.find(params[:sport_id])
    @community = Community.find(params[:community_id])
    @post = Post.find(params[:id])
  end

end
