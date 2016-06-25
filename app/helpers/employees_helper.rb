module EmployeesHelper
	def full_name(empleado)
		return "#{empleado.first_name} #{empleado.last_name}"
	end
	def present_employee(empleado)
		content_tag("h1") do 
			full_name(empleado)
		end
	end
end
