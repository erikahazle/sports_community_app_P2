require 'rails_helper'

describe 'user can comment' do

  before do
    sport = Sport.create(name: 'Running', description: 'Blah blah', image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088', outdoor: true)
    community = sport.communities.create(name: 'Runners go crazy', description: 'all beginners', post_code: 'E15', image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088')
    post = community.posts.create(title: 'Hello world', content: 'I have decided to start running today.......')
  end

  it 'a user can add a comment to a post' do
    visit '/'
    click_link 'Running'
    click_link 'E15'
    click_link 'Comment'
    fill_in('Comment', :with => 'You go girl')
    click_button('Submit')
    expect(page).to have_content 'You go girl'
  end

end