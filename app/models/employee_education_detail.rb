class EmployeeEducationDetail < ActiveRecord::Base
belongs_to :employee
belongs_to :degree
end
