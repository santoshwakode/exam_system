require 'spec_helper'

describe Student do

  it { should have_many(:exam_details) }
  it { should belong_to(:teacher) }

  describe "#valid?" do

    it { should validate_presence_of(:name) }

  end


end

