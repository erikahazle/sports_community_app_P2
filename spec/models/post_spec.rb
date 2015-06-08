require 'rails_helper'

describe Post do
  it 'must have a title' do
    post = Post.new
    expect(post.valid?).to eq false
  end

  it 'must have a content' do
    post = Post.new(title: 'Getting started with running')
    expect(post.valid?).to eq false
  end
end
