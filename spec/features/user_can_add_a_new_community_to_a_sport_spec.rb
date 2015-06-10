require 'rails_helper'

describe 'User can add new communities' do

before do
  running = Sport.create(name: 'Running', description: 'Blah blah', image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088', outdoor: true)
end

it 'a user is able to add a new community' do
  visit '/'
  click_link 'Running'
  click_link 'Add a new community'
  fill_in('Name', :with => 'Sprinters')
  fill_in('Description', :with => "We're interested in becomming faster together")
  fill_in('Post code', :with => 'E1 6EW')
  fill_in('Image', :with => 'http://www.all-athletics.com/files/news_image/start_sprint.jpg')
  click_button('Submit')
  expect(page).to have_content 'Sprinters'
end

end