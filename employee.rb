class Employee
  attr_reader :vacation_days_taken

  def initialize(join_date)
    @join_date = join_date
    @vacation_days_taken = []
  end

  def available_vacation_days
    (Date.today - @join_date).to_i * 0.04 - vacation_days_taken.size
  end

  def request_vacation(start_date, end_date)
    VacationRequest.new(self, start_date, end_date)
  end

  def take_vacation(start_date, end_date)
    (start_date..end_date).each { |date| vacation_days_taken << date }
  end

  def on_vacation?(start_date, end_date)
    vacation_days_taken.any? { |date| date >= start_date && date <= end_date }
  end
end
