class Team
  attr_reader :members

  def initialize(members)
    @members = members
  end

  def employees_on_vacation(start_date, end_date)
    members.select { |employee| employee.on_vacation?(start_date, end_date) }
  end
end
