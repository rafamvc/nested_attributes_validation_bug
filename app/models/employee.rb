class Employee < ActiveRecord::Base
  has_many :addresses, :inverse_of => :employee
  has_one :badge, :inverse_of => :employee
  
  accepts_nested_attributes_for :addresses
  accepts_nested_attributes_for :badge
  # validates_associated :addresses
  
  def is_active?
    active
  end
end
