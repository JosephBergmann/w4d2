require_relative 'employee.rb'
class Manager < Employee
    attr_accessor :name, :title, :salary, :boss, :employees
    def initialize(name, title, salary, boss, employees = [])
        @employees = employees
        super(name, title, salary, boss)
    end

    def bonus(multiplier)
        arr = []
        @employees.each{|employee| employee.is_a?(Manager) ? arr << employee.employees + [employee] : arr << employee}
        salsum = arr.flatten.inject(0){|acc, curr| acc += curr.salary}
        return salsum * multiplier
    end

    def add_employee(employee)
        @employees << employee
        employee.boss = self
    end
end