class Task < ApplicationRecord

  #NOTE: i don't think these are working properly since i don't see the message, so will comment out for now
  
  # validates :name, presence: { message: "Task must have a name" }
  #
  # validates :description, presence: { message: "Task must have a description" }
  #
  # validates :due_date, presence: { message: "Task must have a due date" }
  # validates_format_of :due_date,
  #  :with => /\d{4}-\d{1,2}-\d{1,2}/
end
