class VacationRequest
  attr_reader :start_date, :end_date, :status, :requester

  def initialize(requester, start_date, end_date)
    @requester = requester
    @start_date = start_date
    @end_date = end_date
    @status = 'pending'
  end

  def approve
    @status = 'approved'
    requester.take_vacation(start_date, end_date)
  end

  def reject
    @status = 'rejected'
  end
end
