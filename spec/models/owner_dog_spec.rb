require 'spec_helper'

describe OwnerDog do

  it { should belong_to(:dog) }
  it { should belong_to(:owner) }




end