
require 'spec_helper'

describe Exam do


  it { should have_many(:students) }
  it { should have_many(:tests) }
  it { should belong_to(:teacher) }

  describe "#valid?" do

    it { should validate_presence_of(:name) }

  end 

end
