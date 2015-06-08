require 'rails_helper'

describe Community do

  it 'must have a name' do
    community = Community.new
    expect(community.valid?).to eq false
  end

  it 'must have a post_code' do
    community = Community.new(name: 'Running team')
    expect(community.valid?).to eq false
  end

end
