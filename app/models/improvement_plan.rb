class ImprovementPlan < ApplicationRecord
  # Direct associations

  belongs_to :coach,
             :class_name => "User",
             :foreign_key => "user_id"

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
