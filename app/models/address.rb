class Address < ActiveRecord::Base
  belongs_to :employee, :inverse_of => :addresses
  
  validates :city, length: { within: 100..1000, message: "Too short"}, :if => lambda {|a| a.employee.is_active?}
end
