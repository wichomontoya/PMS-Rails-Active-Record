class ProjectsController < ApplicationController
	def index
		employee=Employee.find(params[:employee_id])
		@proyectos_empleado= employee.projects
	end
	def show
		@project=Project.find(params[:project_id])
	end
	def new
		@project=Project.new
	end
	def create
  		@project=Project.create(project_params)
  		if @project.save
  			redirect_to @project, flash:{success: "Empleado resgistrado exitosamente"}
  		else
  		redirect_to "/project/new", flash:{error:'Hubo un error, intentelo nuevamente'}
  		end
  	end
end
