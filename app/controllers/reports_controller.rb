class ReportsController < ApplicationController
  inherit_resources

  before_filter :authenticate_user!

  def current
    @report = current_user.find_or_build_current_report
  end
end