require_relative 'employee.rb'
require_relative 'manager.rb'

darren = Manager.new('Darren', 'Founder', 1000000, nil)
ned = Manager.new('Ned', 'TA Manager', 78000, nil)
shawna = Employee.new('shawna', 'TA', 12000, nil)
david = Employee.new('david', 'TA', 10000, nil)

darren.add_employee(ned)
ned.add_employee(shawna)
ned.add_employee(david)

puts ned.bonus(10)
puts darren.bonus(10)