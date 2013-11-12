class ReportsController < ApplicationController
  inherit_resources

  before_filter :authenticate_user!

  def current
    @report = Report.latest(current_user)
  end
end