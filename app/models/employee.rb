class Employee < ApplicationRecord
  belongs_to :user
  
  as_enum :department, [:accounting, :finance, :customer_service, :budgeting, :it],  prefix: true, map: :string

  def translated_department
    return if department.blank?

    I18n.t("activerecord.attributes.employee.department.#{department}")
  end
end
