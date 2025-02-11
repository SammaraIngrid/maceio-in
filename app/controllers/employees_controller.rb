class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.order(created_at: :desc)
  end
end
