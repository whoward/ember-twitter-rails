require 'rails_helper'

describe 'tweets routes' do
  it 'GET /tweets' do
    expect(get: 'tweets').to route_to(controller: 'tweets', action: 'index')
  end
  
  it 'POST /tweets' do
    expect(post: 'tweets').to route_to(controller: 'tweets', action: 'create')
  end
end