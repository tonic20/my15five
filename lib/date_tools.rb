class DateTools
  def self.current_friday
    Date.today.beginning_of_week + 4.days
  end
end