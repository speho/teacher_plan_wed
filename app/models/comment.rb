class Comment < ApplicationRecord
  # Direct associations

  belongs_to :action_step

  belongs_to :writer,
             :class_name => "User",
             :foreign_key => "user_id"

  belongs_to :improvement_plan

  # Indirect associations

  # Validations

end
