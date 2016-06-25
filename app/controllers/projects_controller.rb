class ProjectsController < ApplicationController
	def index
		employee=Employee.find(params[:employee_id])
		@proyectos_empleado= employee.projects
	end
	def show
		employee=Employee.find(params[:employee_id])
		@project=Project.find(params[:project_id])
	end
	def new
		employee=Employee.find(params[:employee_id])
		@project=Project.new
	end
	def create
		employee=Employee.find(params[:employee_id])
  		@project=Project.create(project_params)
  		if @project.save
  			redirect_to @project, flash:{success: "Empleado resgistrado exitosamente"}
  		else
  		redirect_to "<%=employee.id%>/project/new", flash:{error:'Hubo un error, intentelo nuevamente'}
  		end
  	end
end
