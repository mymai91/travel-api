require 'rails_helper'

describe Traveler do
  before { @traveler = FactoryGirl.build(:traveler) }

  subject { @traveler }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:gender) }
  it { should respond_to(:birthday) }
end
