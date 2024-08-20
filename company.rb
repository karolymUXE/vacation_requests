class Company
  attr_accessor :managers, :teams

  def initialize
    @managers = []
    @teams = []
  end

  def create_company
    new_manager = Manager.new(self)
    @managers << new_manager
    new_manager.create_team
  end

  def simulate_month
    if rand < 0.5
      create_company
    end
    managers.each do |manager|
      manager.process_vacation_requests
    end
  end
end
