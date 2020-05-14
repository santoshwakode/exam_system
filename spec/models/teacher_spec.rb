require 'spec_helper'

describe Teacher do


  it { should have_many(:students) }
  it { should have_many(:exam_details) }
  it { should belong_to(:subject) }

  describe "#valid?" do

    it { should validate_presence_of(:name) }

  end


end
