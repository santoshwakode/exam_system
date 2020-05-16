
require 'spec_helper'

describe QuestionDetail do

  it { should belong_to(:exam) }

  describe "#valid?" do

    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:question_type) }
  end 

end
