class Badge < ActiveRecord::Base
  belongs_to :employee, :inverse_of => :badge
  
  validates :number, length: { within: 2..10, message: "Too long"}, :if => lambda {|b| b.employee.is_active?}
end



