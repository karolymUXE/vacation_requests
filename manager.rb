require_relative 'team'
require_relative 'vacation_request'

class Manager
  attr_reader :team

  def initialize(team)
    @team = team
  end

  def handle_vacation_request(vacation_request)
    if team.employees_on_vacation(vacation_request.start_date, vacation_request.end_date).size >= (team.members.size / 2.0)
      vacation_request.reject
    else
      vacation_request.approve
    end
  end
end
