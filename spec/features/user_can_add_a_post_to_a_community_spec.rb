require 'rails_helper'

describe 'User can post to a community' do

  before do
    running = Sport.create(name: 'Running', description: 'Blah blah', image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088', outdoor: true)
    running.communities.create(name: 'Runners go crazy', description: 'all beginners', post_code: 'E15', image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088')
  end

  it 'a user should be able to post to a community' do
    visit '/'
    click_link 'Running'
    click_link 'E15'
    click_link 'Add a post'
    fill_in('Title', :with => 'Getting started with running')
    fill_in('Content', :with => 'Running is a great way to get fit quickly')
    click_button('Submit')
    expect(page).to have_content 'Getting started with running'
  end
end