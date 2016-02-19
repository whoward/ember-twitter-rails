require 'rails_helper'

describe ApplicationController do
  controller do
    before_action :require_authentication, only: %i(show)
    
    def index
      render plain: 'hello world'
    end
    
    def show
      render plain: 'hello world'
    end
  end
  
  let(:current_user) { create(:user) }
  
  describe '#current_user' do
    subject { controller.current_user }
    
    context 'given a valid bearer token' do
      as_user :current_user
      it { is_expected.to eq current_user }  
    end
    
    context 'given no bearer token' do
      it { is_expected.to eq GuestUser }
    end
    
    context 'given an invalid user id' do
      as_user 0
      it { is_expected.to eq GuestUser }
    end
  end
  
  describe 'accessing a public endpoint' do
    subject { get(:index) }
    
    context 'as a guest' do
      its(:status) { is_expected.to eq 200 }
    end
    
    context 'as a user' do
      as_user :current_user
      its(:status) { is_expected.to eq 200 }
    end
  end
  
  context 'accessing a authenticated endpoint' do
    subject { get(:show, params: {id: 1}) }
    
    context 'as a guest' do
      its(:status) { is_expected.to eq 401 }
    end
    
    context 'as a user' do
      as_user :current_user
      its(:status) { is_expected.to eq 200 }
    end
  end
  
end