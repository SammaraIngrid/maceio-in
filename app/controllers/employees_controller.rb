class EmployeesController < ApplicationController
  def index
    @query = Employee.all.order(created_at: :desc)
  end
end
