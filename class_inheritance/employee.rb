class Employee
        attr_accessor :salary
        
        def initialize(name, title, salary, boss)
                @name = name
                @title = title
                @salary = salary
                @boss = boss
        end

        def bonus(multiplier)
                bonus = (employee salary) * multiplier
        end
end