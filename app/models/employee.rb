class Employee < ApplicationRecord
  belongs_to :user
  
  as_enum :department, [:accounting, :finance, :customer_service, :budgeting, :it ],  prefix: true, map: :string
end
