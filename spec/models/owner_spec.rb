require 'spec_helper'

describe Owner do

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }

  it { should have_valid(:email).when('test@test.com', 'test+spam@gmail.com') }
  it { should_not have_valid(:email).when('fail', 123) }

  it { should have_many(:owner_dogs) }
  it { should have_many(:dogs).through(:owner_dogs) }

  it 'can have many dogs' do
    owner = FactoryGirl.create(:owner)
    dogs = FactoryGirl.create_list(:dog, 5)

    dogs.each do |dog|
      FactoryGirl.create(:owner_dog, owner: owner, dog: dog)
    end

    dogs.each do |dog|
      expect(owner.dogs).to include(dog)
    end

  end

end
