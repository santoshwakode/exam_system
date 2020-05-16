
require 'spec_helper'

describe Teacher do


  it { should have_many(:exams) }

  describe "#valid?" do

    it { should validate_presence_of(:name) }

  end 

end
