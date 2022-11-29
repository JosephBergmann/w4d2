require_relative 'employee.rb'
class Manager < Employee
    attr_accessor :employees
    def initialize()
        @employees = []
    end

    def bonus(multiplier)
        @employees.sum{|employee| employee.salary}
    end
end