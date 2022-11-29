require_relative "employee.rb"
require "byebug"

class Manager < Employee
        attr_reader :employee_sum, :salary
        attr_accessor :employees


        def initialize(name, title, salary, boss, employees)
                super(name, title, salary, boss)
                @employees = employees
                @employee_sum = 0
        end

        def bonus(multiplier)
                @employee_sum = employee_underling.map {|employee| employee.salary}.sum
                multiplier * @employee_sum
        end

        def employee_underling
                all_employees = []
                if self.employees.length > 0
                        employees.each do |employee| 
                                all_employees << employee
                                if employee.is_a?(Manager)
                                        all_employees += employee.employees
                                end
                        end
                end
                all_employees
        end
end


ned = Manager.new("ned", "founder", 1_000_000, nil, [])

darren = Manager.new("darren", "ta manager", 78_000, ned, nil)

ned.employees << darren

shawna = Employee.new("shawna", "ta", 12_000, darren)

david = Employee.new("david", "ta", 10_000, darren)

darren.employees = [shawna, david]

p ned.bonus(5)
