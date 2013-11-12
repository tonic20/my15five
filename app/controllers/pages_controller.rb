class PagesController < ApplicationController
  def home
    redirect_to current_reports_path if user_signed_in?
  end
end