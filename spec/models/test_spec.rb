
require 'spec_helper'

describe Test do

  it { should have_many(:test_details) }
  it { should belong_to(:student) }
  it { should belong_to(:exam) }

end
