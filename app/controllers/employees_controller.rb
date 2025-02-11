class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update]

  def index
    @employees = Employee.all.order(created_at: :desc)
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employees_params)
    @employee.user = current_user

    if @employee.save
      redirect_to(employees_path, notice: 'Criado com sucesso')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @employee.update(employees_params)
      redirect_to(employees_path, notice: 'Cadastro atualizado com sucesso.')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @employee = Employee.find(params[:id])

    if @employee.destroy
      redirect_to(employees_path, notice: 'Excluído com sucesso')
    else
      redirect_to(employees_path, notice: 'Não foi possível excluir')
    end
  end

  private 

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employees_params
    params.require(:employee)
          .permit(:name, :department, :email)
  end
end
