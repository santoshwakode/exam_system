
require 'spec_helper'

describe Student do


  it { should have_many(:exams) }
  it { should have_many(:tests) }

  describe "#valid?" do

    it { should validate_presence_of(:name) }

  end 

end
