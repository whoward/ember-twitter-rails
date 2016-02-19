require 'rails_helper'

describe 'token routes' do
  it 'POST /token' do
    expect(post: '/token').to route_to(controller: 'tokens', action: 'create')
  end
end