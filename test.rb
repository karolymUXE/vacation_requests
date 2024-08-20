require 'date'
require_relative 'team'
require_relative 'manager'
require_relative 'employee'
require_relative 'vacation_request'

employee1 = Employee.new(Date.new(2022, 1, 1))
employee2 = Employee.new(Date.new(2021, 6, 1))
employee3 = Employee.new(Date.new(2023, 3, 1))
employee4 = Employee.new(Date.new(2020, 11, 1))

team = Team.new([employee1, employee2, employee3, employee4])

manager = Manager.new(team)

vacation_request = VacationRequest.new(employee1, Date.new(2024, 8, 20), Date.new(2024, 8, 25))

manager.handle_vacation_request(vacation_request)

puts "Estado de la solicitud de vacaciones: #{vacation_request.status}"
