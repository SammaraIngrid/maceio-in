class EmployeesController < ApplicationController
  def index
    @query = Employee.all.order(created_at: :desc).ransack(params[:q])

    @employee = @query.result
  end
end
