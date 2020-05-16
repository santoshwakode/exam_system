
require 'spec_helper'

describe TestDetail do

  it { should belong_to(:test) }
  it { should belong_to(:student) }
  it { should belong_to(:question_detail) }


end
