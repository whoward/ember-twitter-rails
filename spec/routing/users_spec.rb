require 'rails_helper'

describe 'users routes' do
  it 'GET /users/dhh' do
    expect(get: 'users/dhh').to route_to(controller: 'users', action: 'show', id: 'dhh')
  end
  
  it 'GET /users/current' do
    expect(get: 'users/current').to route_to(controller: 'users', action: 'current')
  end
end