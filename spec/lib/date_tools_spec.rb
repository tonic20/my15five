require 'spec_helper'

describe DateTools do
  describe "#current_friday" do
    it "return current week friday" do
      expect(DateTools.current_friday.wday).to eq(5)
    end
  end
end