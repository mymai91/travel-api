require 'spec_helper'

describe V1::TravelersController do
  before do
    @traveler = FactoryGirl.create :traveler
    get "/v1/travelers", format: :json
  end

  it 'return traveler information' do
    traveler = JSON.parse(response.body, symbolize_names: true).first
    expect(traveler[:first_name]).to eql @traveler.first_name
    expect(traveler[:last_name]).to eql @traveler.last_name
    expect(traveler[:gender]).to eql @traveler.gender
    expect(traveler[:birthday].to_s.to_i).to eql @traveler.birthday.to_s.to_i
  end

  it 'response code' do
    expect(response).to have_http_status(200)
  end
end
