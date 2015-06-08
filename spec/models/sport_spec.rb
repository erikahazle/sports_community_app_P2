require 'rails_helper'

describe Sport do

  it 'must have a name' do
    sport = Sport.new
    expect(sport.valid?).to eq false
  end

  it 'must have a description' do
    sport = Sport.new(name: 'Running')
    expect(sport.valid?).to eq false
  end

  it 'must have an image' do
    sport = Sport.new(name: 'Running', description: 'A great way to keep fit without an expensive gym membership')
    expect(sport.valid?).to eq false
  end

  it 'must be outdoor or indoor' do
    sport = Sport.new(name: 'Running', description: 'A great way to keep fit without an expensive gym membership', image: 'https://download.unsplash.com/photo-1421091242698-34f6ad7fc088')
    expect(sport.valid?).to eq false
  end

end
