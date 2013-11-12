class ReportsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_resource, only: [:show, :update]

  def current
    @report = current_user.find_or_build_current_report
  end

  def archive
    @reports = current_user.reports.sorted
  end

  def create
    @report = Report.new(report_params)
    @report.week_date = DateTools.current_friday
    @report.user = current_user
    @report.save
  end

  def update
    @report.update_attributes(report_params)
  end

  private

  def report_params
    params.require(:report).permit(answers_attributes:
      [:question_id, :body, :id])
  end

  def set_resource
    @report = current_user.reports.find(params[:id])
  end
end