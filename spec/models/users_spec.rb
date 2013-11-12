require 'spec_helper'

describe User do
  let(:user) { create :user }
  it "find or build current report" do
    report = user.find_or_build_current_report
    expect(report.new_record?).to be_true
  end
end