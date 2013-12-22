require 'spec_helper'

describe Dog do

  it { should validate_presence_of(:name) }

  it { should have_many(:owner_dogs) }
  it { should have_many(:owners).through(:owner_dogs) }

end
