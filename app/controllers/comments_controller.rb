class CommentsController < ApplicationController
  def index
  end

  def new
    @sport = Sport.find(params[:sport_id])
    @community = Community.find(params[:community_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    sport = Sport.find(params[:sport_id])
    community = Community.find(params[:community_id])
    post = Post.find(params[:post_id])
    comment = post.comments.new params[:comment].permit(:user_name, :content)
    if comment.save
      redirect_to sport_community_post_path(sport, community, post)
    else
      render 'new'
    end
  end
end
